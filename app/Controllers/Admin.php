<?php

namespace App\Controllers;

use App\Models\{
    AnimeModel,
    AnimeSlider,
    EpisodeModel,
    EpisodeViews,
    EpisodeEmbedModel,
    AnimeSchedule,
    Settings,
    EpisodeReport,
    EpisodeCommentReport,
    EpisodeCommentModel,
    EpisodeCommentRepyModel,
    CommunityPostModel,
    CommunityRepyPostModel,
    BoardCommentReport,
    BoardReport,
    CommunityModel,
    UserModelUP,
};

use CodeIgniter\API\ResponseTrait;

class Admin extends BaseController
{
    use ResponseTrait;

    // return $this->response->setJSON($test);

    public function __construct()
    {
        $this->ThemesConfig = 'Backend/Default/';
    }

    //Admin İndex PAGE
    public function Admin_İndex()
    {
        $modelsettings = new Settings();
        $modelanime = new AnimeModel();
        $modelepisode = new EpisodeModel();
        $modelepisodeviews = new EpisodeViews();
        $modelembed = new EpisodeEmbedModel();
        $modeluser = new UserModelUP();

        return view($this->ThemesConfig . 'İndex', [
            'getAdminSettings' => $modelsettings->getAdminSettings(),
            'getAnimeCount' => $modelanime->getAnimeCount(),
            'getAnimeViewsToday' => $modelanime->getTodayViewCount(),
            'getAnimeViewsMonth' => $modelanime->getMonthViewCount(),
            'getAnimeViewsYears' => $modelanime->getYearsViewCount(),
            'getEpisodeCount' => $modelepisode->getEpisodeCount(),
            'getEpisodeViewsToday' => $modelepisodeviews->getTodayViewCount(),
            'getEpisodeViewsWeeky' => $modelepisodeviews->getWeekyViewCount(),
            'getEpisodeViewsMonth' => $modelepisodeviews->getMonthViewCount(),
            'getEmbedCount' => $modelembed->getEmbedCount(),
            'getUserCount' => $modeluser->getUserCount(),

        ]);
    }


    //Anime Jikan Get/Update Function
    public function getAnime() 
    {
        $ModelSettings = new Settings();
        $animeUID = $_GET['uid'];
        $url = "https://api.jikan.moe/v4/anime/" . $animeUID . "/full";
        $data = json_decode(file_get_contents($url), true);
        return view($this->ThemesConfig . 'Anime/getanime',[
                'getAdminSettings' => $ModelSettings->getAdminSettings(),
                'data' => $data,
            ]
        );
    }
    public function getAnimesave()
    {
        $animeModel = new AnimeModel();
        $data = $this->request->getPost([
            'uid',
            'ani_name',
            'ani_jname',
            'ani_synonyms',
            'ani_release',
            'ani_release_season',
            'ani_genre',
            'ani_type',
            'ani_country',
            'ani_stats',
            'ani_source',
            'ani_rate',
            'ani_score',
            'ani_ep',
            'ani_synopsis',
            'ani_poster',
            'ani_manga_url',
            'ani_quality',
            'ani_time',
            'ani_studio',
            'ani_producers',
            'ani_pv',
            'ani_aired',
            'ani_aired_fin',
            'external',
            'relations',
        ]);

        $image = $this->request->getFile('ani_poster');
        $imageName = $image->getName() ? $data['uid'] . "." . $image->getClientExtension() : $this->request->getPost('ani_poster');

        if ($imageName && $image->isValid() && !$image->hasMoved()) {
            $newName = 'assest/anime/' . $imageName;
            if (file_exists($newName)) {
                unlink($newName);
            }
            $image->move('assest/anime', $imageName);
            $data['ani_poster'] = '/' . $newName;
        }
        $animeModel->insert($data);
        return redirect()->to(base_url() . 'admin');
    }
    public function getAnimeupdate() 
    {
        $ModelSettings = new Settings();
        $animemodel = new AnimeModel();
        $animeUID = $_GET['uid'];
        $animeup = $animemodel->where('uid', $animeUID)->find();
        $url = "https://api.jikan.moe/v4/anime/" . $animeUID . "/full";
        $data = json_decode(file_get_contents($url), true);
        return view($this->ThemesConfig . 'Anime/getanimeupdate',
            [
                'getAdminSettings' => $ModelSettings->getAdminSettings(),
                'manuel' => $animeup,
                'data' => $data,
            ]
        );
    }
    public function getAnimeupdatesave() 
    {
        $animeModel = new AnimeModel();
        $uid = $this->request->getPost('uid');
        $data = $this->request->getPost([
            'uid',
            'ani_name',
            'ani_jname',
            'ani_synonyms',
            'ani_release',
            'ani_release_season',
            'ani_genre',
            'ani_type',
            'ani_country',
            'ani_stats',
            'ani_source',
            'ani_rate',
            'ani_score',
            'ani_ep',
            'ani_synopsis',
            'ani_poster',
            'ani_manga_url',
            'ani_quality',
            'ani_time',
            'ani_studio',
            'ani_producers',
            'ani_pv',
            'ani_aired',
            'ani_aired_fin',
            'external',
            'relations',
        ]);


        $image = $this->request->getFile('ani_poster');
        $imageName = $image->getName() ? $data['uid'] . "." . $image->getClientExtension() : $this->request->getPost('ani_poster');

        if ($imageName && $image->isValid() && !$image->hasMoved()) {
            $newName = 'assest/anime/' . $imageName;
            if (file_exists($newName)) {
                unlink($newName);
            }
            $image->move('assest/anime', $imageName);
            $data['ani_poster'] = '/' . $newName;
        }

        $animeModel->updateAnime($uid, $data);
        return redirect()->to(base_url() . 'admin');
    }
    //Anime Jikan Get/Update Function Finished

    ///Episode Adding/Editing/Embed Adding, Embed Editing, GetAllEpisode Function Start
    public function episodeadd()
    {
        $modelsettings = new Settings();

        return view($this->ThemesConfig . 'Anime/Episode/adding', [
            'getAdminSettings' => $modelsettings->getAdminSettings(),
        ]);
    }

    public function episodeaddsave()
    {
        $model = new EpisodeModel();
        $data = [
            'uid' => $this->request->getPost('uid'),
            'ep_id_name' => $this->request->getPost('ep_id_name'),
            'ep_name' => $this->request->getPost('ep_name'),

        ];
        $model->insert($data);
        return redirect()->to(base_url('/admin/episode/adding'));
    }




    //Episode Edit, Save ve Delete yapılan kısım.
    public function episodeedit()
    {
        $modelsettings = new Settings();
        $animeUID = $_GET['uid'];
        $animeEPID = $_GET['eps'];
        $episodemodel = new EpisodeModel();
        $episodeedit = $episodemodel->where('uid', $animeUID)->where('ep_id_name', $animeEPID)->first();
        return view($this->ThemesConfig . 'Anime/Episode/editing', [
            'getAdminSettings' => $modelsettings->getAdminSettings(),
            'epeedit' => $episodeedit,
        ]);
    }
    public function episodeeditsave()
    {
        $uid = $this->request->getPost('uid');
        $epuid = $this->request->getPost('ep_id_name');
        $episodemodel = new EpisodeModel();
        $data = $this->request->getPost(['ep_name']);
        $data = $this->request->getPost(['ep_jname']);
        $episodemodel->updateEpisode($uid, $data, $epuid);

        return redirect()->back();
    }


    public function episodeeditdelete()
    {
        $animeUID = $_GET['uid'];
        $animeEPID = $_GET['eps'];

        $episodemodel = new EpisodeModel();
        $episodemodel->deleteEpisode($animeUID, $animeEPID);
        return redirect()->to('/admin');
    }




    //GET EPİSODE JİKAN
    public function getEpisode()  //jikan üzerinden birden çok bölüm çeker.
    {
        $modelsettings = new Settings();
        $animeUID = $_GET['uid'];
        $getPage = $_GET['page'];
        $url = "https://api.jikan.moe/v4/anime/{$animeUID}/episodes?page={$getPage}";
        $response = file_get_contents($url);
        $data = json_decode($response, true)['data'];
        return view($this->ThemesConfig . 'Anime/Episode/getepisode', [
            'getAdminSettings' => $modelsettings->getAdminSettings(),
            'data' => $data,
        ]);
    }


    public function getEpisodeSave()  //jikan birden çok bölüm kaydeder.
    {
        $model = new EpisodeModel();

        $uid = $this->request->getPost('uid');
        $ep_ids = $this->request->getPost('ep_id_name');
        $ep_names = $this->request->getPost('ep_name');
        $ep_jnames = $this->request->getPost('ep_jname');

        foreach ($ep_ids as $key => $ep_id) {
            $data = array(
                'uid' => $uid,
                'ep_id_name' => $ep_id,
                'ep_name' => $ep_names[$key],
                'ep_jname' => $ep_jnames[$key],
            );
            $model->insert($data);
        }
        return redirect()->to(base_url() . 'admin');
    }

    // Episode Embed Ekleme Yeri
    public function episodeembedadd()
    {
        $modelsettings = new Settings();
        return view($this->ThemesConfig . 'Anime/Episode/embed', [
            'getAdminSettings' => $modelsettings->getAdminSettings(),
        ]);
    }


    public function episodeembedaddsave()
    {
        $model = new EpisodeEmbedModel();
        $embed_names = $this->request->getPost('embed_name');
        $embed_order = $this->request->getPost('embed_order');
        $embed_frames = $this->request->getPost('embed_frame');
        $embed_ids_chunks = explode(",", $this->request->getPost('embed_id'));

        $embed_ids = [];
        foreach ($embed_ids_chunks as $chunk) {
            if (strpos($chunk, "-")) {
                list($start, $end) = explode("-", $chunk);
                for ($i = $start; $i <= $end; $i++) {
                    $embed_ids[] = $i;
                }
            } else {
                $embed_ids[] = $chunk;
            }
        }

        foreach ($embed_names as $key => $embed_name) {
            foreach ($embed_ids as $embed_id) {
                $data = [
                    'embed_uid' => $this->request->getPost('embed_uid'),
                    'embed_id' => $embed_id,
                    'embed_type' => $this->request->getPost('embed_type'),
                    'embed_name' => $embed_name,
                    'embed_order' => $embed_order[$key],
                    'embed_frame' => $embed_frames[$key],
                ];
                $model->insert($data);
            }
        }
        return redirect()->to(base_url('/admin/episode/embed'));
    }

    //EMBED EDİT VE DELETE yapıldığı kısımdır.
    public function embededit()
    {
        $modelsettings = new Settings();
        $animeUID = $_GET['uid'];
        $animeEPID = $_GET['eps'];
        $embedmodel = new EpisodeEmbedModel();
        $episodeembed = $embedmodel->where('embed_uid', $animeUID)->where('embed_id', $animeEPID)->findAll();
        return view($this->ThemesConfig . 'Anime/Episode/embedediting', [
            'getAdminSettings' => $modelsettings->getAdminSettings(),
            'embededitresult' => $episodeembed,
        ]);
    }


    public function embeddelete()
    {
        $id = $this->request->getPost('id');
        $embedmodel = new EpisodeEmbedModel();
        $embedmodel->deleteEmbed($id);
        return redirect()->to(previous_url());
    }

    ///Episode Adding/Editing/Embed Adding, Embed Editing, GetAllEpisode Finish



















    // ADMİN REPORT YÖNETİM YERİDİR


    //episode report ve delete kısmı
    public function getepisodereport()
    {
        $modelsettings = new Settings();
        $episodereportmodel = new EpisodeReport();
        $data = [
            'getAdminSettings' => $modelsettings->getAdminSettings(),
            'episodereport' => $episodereportmodel->paginate(10),
            'pager' => $episodereportmodel->pager,
        ];
        return view('admin/report/episode/episode', $data);
    }

    public function episodereportdelete()
    {
        $episodereportmodel = new EpisodeReport();
        if ($this->request->getMethod() === 'post') {
            $postId = $this->request->getPost('post_delete_id');
            $episodereportmodel->delete($postId);
        }

        return redirect()->back();
    }

    // Admin Main Comment Report List
    public function getcommentmainreport()
    {
        $modelsettings = new Settings();
        $commentreportmodel = new EpisodeCommentReport();
        $data = [
            'getAdminSettings' => $modelsettings->getAdminSettings(),
            'commentreport' => $commentreportmodel->getcomment(),
        ];
        return view('admin/report/episode/main', $data);
    }
    public function commentreportdelete()
    {
        $commentreportmodel = new EpisodeCommentReport();
        $postId = $this->request->getPost('report_id');
        $commentreportmodel->delete($postId);

        return redirect()->back();
    }
    public function commentandreportdelete()
    {
        $commentreportmodel = new EpisodeCommentReport();
        $postId = $this->request->getPost('report_id');
        $commentreportmodel->delete($postId);
        $commentcreportmodel = new EpisodeCommentModel();
        $postdId = $this->request->getPost('comment_id');
        $commentcreportmodel->delete($postdId);
        $commentrepynmodel = new EpisodeCommentRepyModel();
        $postrepy = $this->request->getPost('repy_id');
        $itemsToDelete = $commentrepynmodel->where('post_id', $postrepy)->findAll();
        foreach ($itemsToDelete as $item) {
            $commentrepynmodel->delete($item['id']);
        }
        return redirect()->back();
    }
    // Admin Repy Comment Report List
    public function getcommentrepyreport()
    {
        $modelsettings = new Settings();
        $commentreportmodel = new EpisodeCommentReport();
        $data = [
            'getAdminSettings' => $modelsettings->getAdminSettings(),
            'commentreport' => $commentreportmodel->getrepycomment(),
        ];
        return view('admin/report/episode/repy', $data);
    }
    public function commentrepyreportdelete()
    {

        $commentreportmodel = new EpisodeCommentReport();
        $postId = $this->request->getPost('report_id');
        $commentreportmodel->delete($postId);

        return redirect()->back();
    }
    public function commentrepyandreportdelete()
    {

        $commentreportmodel = new EpisodeCommentReport();
        $postId = $this->request->getPost('report_id');
        $commentreportmodel->delete($postId);

        $commentcreportmodel = new EpisodeCommentRepyModel();
        $postdId = $this->request->getPost('comment_id');
        $commentcreportmodel->delete($postdId);

        return redirect()->back();
    }

    // Admin Board Report List Kısmıdır
    public function getboardreport()
    {
        $modelsettings = new Settings();
        $boardreportmodel = new BoardReport();
        $data = [
            'getAdminSettings' => $modelsettings->getAdminSettings(),
            'boardreport' => $boardreportmodel->boardreport(),
        ];
        return view('admin/report/board/board', $data);
    }
    public function boardreportdelete()
    {

        $boardreportmodel = new BoardReport();
        $postId = $this->request->getPost('report_id');
        $boardreportmodel->delete($postId);

        return redirect()->back();
    }
    public function boardandreportdelete()
    {

        $boardreportmodel = new BoardReport();
        $postId = $this->request->getPost('report_id');
        $boardreportmodel->delete($postId);

        $communitycreportmodel = new CommunityModel();
        $postdId = $this->request->getPost('comment_id');
        $communitycreportmodel->delete($postdId);

        return redirect()->back();
    }

    //Board Main Report List
    public function getboardmainreport()
    {
        $modelsettings = new Settings();
        $boardreportmodel = new BoardCommentReport();
        $data = [
            'getAdminSettings' => $modelsettings->getAdminSettings(),
            'boardreport' => $boardreportmodel->getcomment(),
        ];
        return view('admin/report/board/main', $data);
    }
    public function boardmreportdelete()
    {

        $boardcreportmodel = new BoardCommentReport();
        $postId = $this->request->getPost('report_id');
        $boardcreportmodel->delete($postId);

        return redirect()->back();
    }
    public function boardmandreportdelete()
    {

        $boardcreportmodel = new BoardCommentReport();
        $postId = $this->request->getPost('report_id');
        $boardcreportmodel->delete($postId);

        $communitymainmodel = new CommunityPostModel();
        $postdId = $this->request->getPost('comment_id');
        $communitymainmodel->delete($postdId);

        $communityrepynmodel = new CommunityRepyPostModel();
        $postrepy = $this->request->getPost('repy_id');

        $itemsToDelete = $communityrepynmodel->where('post_c_id', $postrepy)->findAll();
        foreach ($itemsToDelete as $item) {
            $communityrepynmodel->delete($item['id']);
        }

        return redirect()->back();
    }
    //Admin Board Repy Report Kısmıdır
    public function getboardrepyreport()
    {
        $modelsettings = new Settings();
        $boardreportmodel = new BoardCommentReport();
        $data = [
            'getAdminSettings' => $modelsettings->getAdminSettings(),
            'boardreport' => $boardreportmodel->getrepy(),
        ];
        return view('admin/report/board/repy', $data);
    }
    public function boardrreportdelete()
    {

        $boardcreportmodel = new BoardCommentReport();
        $postId = $this->request->getPost('report_id');
        $boardcreportmodel->delete($postId);

        return redirect()->back();
    }
    public function boardrandreportdelete()
    {

        $boardcreportmodel = new BoardCommentReport();
        $postId = $this->request->getPost('report_id');
        $boardcreportmodel->delete($postId);

        $communitymainmodel = new CommunityRepyPostModel();
        $postdId = $this->request->getPost('comment_id');
        $communitymainmodel->delete($postdId);

        return redirect()->back();
    }


    // Anime Slider Kısmıdır. Basit bir kısım.
    public function anislider()   ///anime slider kısmı.  Sadece anime uid giriliyor. Yani fazla önemli değil.
    {
        $modelsettings = new Settings();
        $slidermodel = new AnimeSlider();
        $alldata = $slidermodel->findAll();
        $data = [
            'getAdminSettings' => $modelsettings->getAdminSettings(),
            'slider' => $alldata,
        ];

        return view('admin/settings/slider', $data);
    }


    public function anislidersave()
    {
        $slidermodel = new AnimeSlider();
        $ids = $this->request->getVar('id');
        $animeuids = $this->request->getVar('slideruid');
        $wallpaperurls = $this->request->getVar('sliderwuid');

        array_map(function ($id, $animeuid, $wallpaperurl) use ($slidermodel) {
            $slidermodel->update($id, [
                'slideruid' => $animeuid,
                'sliderwallpaper' => $wallpaperurl,
            ]);
        }, array_keys($ids), $animeuids, $wallpaperurls);

        return redirect('admin/anime/slider');
    }


    //Anime Schedule Kısmıdır. Takvim buradadır. 
    public function schedule()   //anime takvimi yani schedule kısmıdır.  baya karmasık  birşey olursa düzeltilecektir.
    {
        $schedulemodel = new AnimeSchedule();
        $modelsettings = new Settings();
        $data = [
            'getAdminSettings' => $modelsettings->getAdminSettings(),
            'schedulelist' => $schedulemodel->orderBy('sc_days')->findAll(),
        ];
        return view('admin/settings/schedule', $data);
    }

    public function scheduleadd()
    {
        $schedulemodel = new AnimeSchedule();
        $sc_days = explode(",", $this->request->getPost('sc_days'));
        foreach ($sc_days as $day) {
            $data = [
                'sc_days' => $day,
                'sc_id' => $this->request->getPost('sc_id'),
                'sc_ep' => $this->request->getPost('sc_ep'),
                'sc_time' => $this->request->getPost('sc_time')
            ];
            $schedulemodel->insert($data);
        }
        return redirect()->to(base_url() . '/admin/anime/schedule');
    }

    public function scheduledelete()
    {
        $schedulemodel = new AnimeSchedule();
        if ($this->request->getMethod() === 'post') {
            $scheduleid = $this->request->getVar('id');

            if ($schedulemodel->delete($scheduleid)) {
                return redirect()->to(base_url() . '/admin/anime/schedule');
            } else {
                return redirect()->to(base_url() . '/admin/anime/schedule');
            }
        }
        return redirect()->to(base_url() . '/admin/anime/schedule');
    }

    public function scheduledeleteall()
    {
        $schedulemodel = new AnimeSchedule();
        $schedulemodel->truncate();
        return redirect()->to(base_url() . '/admin/anime/schedule');
    }

    public function settings($type)
    {
        $modelsettings = new Settings();
        $data = [
            'getAdminSettings' => $modelsettings->getAdminSettings(),
            'settings' => $modelsettings->getSettings(),
        ];

        return view('admin/settings/' . $type, $data);
    }


    public function settingupdate()
    {
        $data = array_filter($this->request->getPost([
            'id',
            'class',
            'key',
            'value',
            'type',
            'context',
        ]), function ($value) {
            return !is_null($value) && $value !== '';
        });
        $settingsindex = new Settings();
        $settingsindex->settingupdate($data['id'], $data);

        return redirect()->back();
    }
}
