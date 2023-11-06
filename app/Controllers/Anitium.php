<?php

namespace App\Controllers;

use App\Models\{
    AnimeModel,
    AnimeSlider,
    EpisodeModel,
    EpisodeViews,
    EpisodeEmbedModel,
    UserStatusModel,
    UserModelUP,
    AnimeSchedule,
    UserGroupModel,
    CommunityModel,
    CommunityPostModel,
    EpisodeCommentModel,
    Settings,
    EpisodeVote,
    CommunityRepyPostModel,
    EpisodeCommentRepyModel,
    EpisodeMainRep,
    EpisodeRepyRep,
    CommunityVote,
    CommunityMainRep,
    CommunityRepyRep,
    EpisodeReport,
    EpisodeCommentReport,
    BoardCommentReport,
    BoardReport,
};
use CodeIgniter\Shield\Models\UserModel;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\Config\Services;
use Config\Encryption;

class Anitium extends BaseController
{
    use ResponseTrait;

    public $anitiumthemes;

    public function __construct()
    {
        $this->AnitiumThemes(); //Anime Tema Seçimini Yükler
    }


    private function getCurlResponse($url)
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $response = curl_exec($ch);
        curl_close($ch);
        return $response;
    }

    //Datebase AnimeTema Seçim İsmini Yükler.
    private function AnitiumThemes()
    {
        $settingsModel = new Settings();
        $settings = $settingsModel->find(1);
        $this->anitiumthemes = $settings['value'];
    }

    // return $this->response->setJSON($DATA);

    // localhost olarak girildiğinde çıkan sayfa.
    public function İndex()
    {
        $ModelSettings = new Settings();
        $ModelCommunity = new CommunityModel();

        $Data = [
            'Settings' => $ModelSettings->getindex(),
            'LastBoardCommunityData' => $ModelCommunity->get_LastBoardCommunityHome(),
        ];
        return view('Frontend/' . $this->anitiumthemes . '/İndex', $Data);
    }

    // localhost/home olarak girildiğinde çıkan sayfa.
    public function Home()
    {
        $Modelsettings = new Settings();
        $ModelEpisode = new EpisodeModel();
        $ModelAnime = new AnimeModel();
        $ModelEpisodeViews = new EpisodeViews();
        $ModelCommunity = new CommunityModel();
        $ModelSlider = new AnimeSlider();


        $Data = [
            'Settings' => $Modelsettings->getHome(),
            'SliderData' => $ModelSlider->getSlider(),
            'TrendingData' => $ModelAnime->getTrending(),
            'LastEpisodeData' => $ModelEpisode->get_LastEpisodeHome(),
            'UpCommingData' => $ModelAnime->get_AnimeUpComing(),
            'EpisodeViewSideBarData' => $ModelEpisodeViews->get_EpisodeViewSideBar(),
            'LastBoardCommunityData' => $ModelCommunity->get_LastBoardCommunityHome(),
        ];
        return view('Frontend/' . $this->anitiumthemes . '/Home', $Data);
    }

    //Animelerin üstüne gelince çıkan yazı qtip
    public function Qtip($uid)
    {
        $ModelAnime = new AnimeModel();
        $ModelUserAnimeStatus = new UserStatusModel();

        $userid = auth()->id();
        $status = $ModelUserAnimeStatus->where('user_id', $userid)->where('anime_uid', $uid)->first()['user_status'] ?? null;

        $data = $ModelAnime->getqtip($uid);
        $userstatus = $status;

        $responseData = [
            'html' => view('Frontend/' . $this->anitiumthemes . '/Ajax/Get_Qtip', compact('data', 'userstatus'))
        ];

        return $this->response->setJSON($responseData);
    }

    //Home Sayfasındaki New or Top verisini Çeker!
    public function get_CommentHome($get_status)
    {
        $ModelEpisodeComment = new EpisodeCommentModel();
        $CommentHomeData = $ModelEpisodeComment->get_CommentHome($get_status);

        return $this->response->setJSON(
            ['html' => view('Frontend/' . $this->anitiumthemes . '/Ajax/Get_CommentHome', ['CommentHomeData' => $CommentHomeData])]
        );
    }

    //Home Sayfasındaki Anime Takvim içindeki Days Verisi Çeker!
    public function get_ScheduleDays($days)
    {
        $ModelSchedule = new AnimeSchedule();
        $ScheduleDaysData = $ModelSchedule->get_ScheduleDays($days);
        return $this->response->setJSON(
            ['html' => view('Frontend/' . $this->anitiumthemes . '/Ajax/Get_ScheduleDays', ['ScheduleDay' => $ScheduleDaysData])]
        );
    }

    //Note Aşağıdaki Anime_Type function "today, month, years yenilenmelidir."
    // Localhost/Type  Sayfasıdır.  
    public function Anime_Type($type)
    {
        $ModelSettings = new Settings();
        $ModelAnime = new AnimeModel();

        $aniTypes = [
            'movies' => '2',
            'ova' => '3',
            'special' => '5',
            'ona' => '4',
            'tv' => '1'
        ];

        if (!isset($aniTypes[$type])) {
            return redirect()->to('/');
        }

        $search = $this->request->getGet('search');
        $currentPage = $this->request->getGet('page') ?? 1;
        $perPage = 34;
        $query = $ModelAnime->where('ani_type', $aniTypes[$type])->orderBy('ani_name', 'ASC');
        if (!empty($search)) {
            $query->like('ani_name', $search);
        }

        $Data = [
            'Settings' => $ModelSettings->getTypeSearch(),
            'TypeName' => $type,
            'AnimeTypeData' => $query->paginate($perPage, 'default', $currentPage),
            'AnimeTypePage' => $ModelAnime->pager,

            'topanime' => $ModelAnime->topanime(), //Değiş sistem yapılacak
            'topmonthanime' => $ModelAnime->topmonthanime(), //Değiş sistem yapılacak
            'topyearsanime' => $ModelAnime->topyearsanime(), //Değiş sistem yapılacak
        ];
        return view('Frontend/' . $this->anitiumthemes . '/Extend/Type', $Data);
    }

    //Note Aşağıdaki AZ_List function "today, month, years yenilenmelidir."
    // localhost/az-list harfler arandığı kısım
    public function AZ_List($getAZ)
    {
        $ModelSettings = new Settings();
        $ModelAnime = new AnimeModel();
        $AzSearch = $ModelAnime->where('LEFT(ani_name, 1)', $getAZ)->paginate(34);

        $Data = [
            'Settings' => $ModelSettings->getAZSearch(),
            'AZName' => $getAZ,
            'AnimeAZData' => $AzSearch,
            'AnimeAZPage' => $ModelAnime->pager,

            'topanime' => $ModelAnime->topanime(), //Değiş sistem yapılacak
            'topmonthanime' => $ModelAnime->topmonthanime(), //Değiş sistem yapılacak
            'topyearsanime' => $ModelAnime->topyearsanime(), //Değiş sistem yapılacak
        ];
        return view('Frontend/' . $this->anitiumthemes . '/Extend/A-Z', $Data);
    }

    //Note Aşağıdaki Genre function "today, month, years yenilenmelidir."
    // Localhost/genre arandığı kısımdır.
    public function Genre_Search($Genre)
    {
        $ModelAnime = new AnimeModel();
        $ModelSettings = new Settings();

        $page = $this->request->getGet('page') ?? 1;
        $query = $ModelAnime->get_Genre($Genre);
        $GenreSearch = $query->paginate(28, 'default', $page);

        $Data = [
            'Settings' => $ModelSettings->getGenreSearch(),
            'GenreName' => $Genre,
            'AnimeGenreData' => $GenreSearch,
            'AnimeGenrePage' => $ModelAnime->pager,

            'topanime' => $ModelAnime->topanime(), //Değiş sistem yapılacak
            'topmonthanime' => $ModelAnime->topmonthanime(), //Değiş sistem yapılacak
            'topyearsanime' => $ModelAnime->topyearsanime(), //Değiş sistem yapılacak
        ];
        return view('Frontend/' . $this->anitiumthemes . '/Extend/Genre', $Data);
    }

    //Note Aşağıdaki Studio function "today, month, years yenilenmelidir."
    // Localhost/studio arandığı kısımdır.
    public function Studio_Search($Studio)
    {
        $ModelAnime = new AnimeModel();
        $ModelSettings = new Settings();

        $page = $this->request->getGet('page') ?? 1;
        $query = $ModelAnime->get_Studio($Studio);
        $StuudioSearch = $query->paginate(28, 'default', $page);
        $Data = [
            'Settings' => $ModelSettings->getGenreSearch(),
            'StudioName' => $Studio,
            'AnimeStudioData' => $StuudioSearch,
            'AnimeStudioPage' => $ModelAnime->pager,

            'topanime' => $ModelAnime->topanime(), //Değiş sistem yapılacak
            'topmonthanime' => $ModelAnime->topmonthanime(), //Değiş sistem yapılacak
            'topyearsanime' => $ModelAnime->topyearsanime(), //Değiş sistem yapılacak
        ];
        return view('Frontend/' . $this->anitiumthemes . '/Extend/studio', $Data);
    }

    //Note Aşağıdaki producers function "today, month, years yenilenmelidir."
    // Localhost/producers arandığı kısımdır.
    public function Producers_Search($Producers)
    {
        $ModelAnime = new AnimeModel();
        $ModelSettings = new Settings();

        $page = $this->request->getGet('page') ?? 1;
        $query = $ModelAnime->get_Producers($Producers);
        $ProducersSearch = $query->paginate(28, 'default', $page);
        $Data = [
            'Settings' => $ModelSettings->getGenreSearch(),
            'ProducersName' => $Producers,
            'AnimeProducersData' => $ProducersSearch,
            'AnimeProducersPage' => $ModelAnime->pager,

            'topanime' => $ModelAnime->topanime(), //Değiş sistem yapılacak
            'topmonthanime' => $ModelAnime->topmonthanime(), //Değiş sistem yapılacak
            'topyearsanime' => $ModelAnime->topyearsanime(), //Değiş sistem yapılacak
        ];
        return view('Frontend/' . $this->anitiumthemes . '/Extend/producers', $Data);
    }

    //Anime Search Yaptığında Bulan Yer.
    public function Anime_Search()
    {
        $ModelAnime = new AnimeModel();
        $ModelSettings = new Settings();
        $KeyWord = $this->request->getGet('keyword');
        $SearchData = $ModelAnime->like('ani_name', $KeyWord)->orLike('uid', $KeyWord)->orLike('ani_synonyms', $KeyWord)->paginate(30);
        $Data = [
            'Settings' => $ModelSettings->getFilterSearch(),
            'SearchData' => $SearchData,
            'Page' => $ModelAnime->pager,
        ];
        return view('Frontend/' . $this->anitiumthemes . '/Search', $Data);
    }

    // Anime Filter
    public function Anime_Filter()
    {
        $ModelSettings = new Settings();

        $Data = [
            'Settings' => $ModelSettings->getFilterSearch(),
        ];
        return view('Frontend/' . $this->anitiumthemes . '/Filter', $Data);
    }

    //Anime GetFilter Ajax
    public function Anime_GetFilter()
    {
        $fields = ['type', 'country', 'stats', 'rate', 'source', 'season', 'language', 'sort', 'aired_year', 'aired_month', 'aired_day', 'genres'];
        $data = [];

        foreach ($fields as $field) {
            $data[$field] = $this->request->getGet($field);
        }

        $data['aired'] = $data['aired_year'] . $data['aired_month'] . $data['aired_day'];
        $data['genres'] = urldecode($data['genres']);

        $ModelAnime = new AnimeModel();

        $results = $ModelAnime->search($data);

        $chunkedData = array_chunk($results, 30);

        $page = $this->request->getVar('page') ?? 1;
        $FilterData = isset($chunkedData[$page - 1]) ? $chunkedData[$page - 1] : [];

        $responseData = [
            'count' => count($results),
            'page' => [
                'status' =>  $page < count($chunkedData) ? true : false,
                'totalPages' => count($chunkedData),
            ],
            'html' => view('Frontend/' . $this->anitiumthemes . '/Ajax/Get_Filter', compact('FilterData'))
        ];
        return $this->response->setJSON($responseData);
    }

    //Anime Search Önerilerin Göründüğü Kısım
    public function Anime_Suggestions()
    {
        $ModelAnime = new AnimeModel();

        $KeyWord = $this->request->getVar('keyword');
        $SuggestionsData = $ModelAnime->getSuggestions($KeyWord);

        $responseData = [
            'html' => view('Frontend/' . $this->anitiumthemes . '/Ajax/Get_Suggestions', compact('SuggestionsData'))
        ];

        return $this->response->setJSON($responseData);
    }

    //Note Aşağıdaki Recently_Updated function "today, month, years yenilenmelidir."
    //Note2 Pager yapılması gerekiyor. Limit 54 verisi çekiyor.
    //Last Episode kısmında daha fazla göstermesi için...
    public function Recently_Updated()
    {
        $ModelSettings = new Settings();
        $ModelAnime = new AnimeModel();
        $ModelEpisode = new EpisodeModel();
        $RecentlyEpisodeData = $ModelEpisode->get_RecentlyUpdated();

        $Data = [
            'Settings' => $ModelSettings->getLastEpisode(),
            'AnimeRecentlyUpdateData' => $RecentlyEpisodeData,

            'topanime' => $ModelAnime->topanime(), //Değiş sistem yapılacak
            'topmonthanime' => $ModelAnime->topmonthanime(), //Değiş sistem yapılacak
            'topyearsanime' => $ModelAnime->topyearsanime(), //Değiş sistem yapılacak
        ];
        return view('Frontend/' . $this->anitiumthemes . '/Extend/Recently_Updated', $Data);
    }

    //Note Aşağıdaki Anime_Details function "today, month, years yenilenmelidir."
    //Last Episode kısmında daha fazla göstermesi için...
    public function Anime_Details($Uid)
    {
        $ModelSettings = new Settings();
        $ModelAnime = new AnimeModel();
        $ModelEpisode = new EpisodeModel();
        $ModelUserStatus = new UserStatusModel();

        $UserID = auth()->id();
        $UserAnimeStatus = $ModelUserStatus->where('user_id', $UserID)->where('anime_uid', $Uid)->first()['user_status'] ?? null;

        $ModelAnime->animeviewupdate($Uid);


        $Data = [
            'Settings' => $ModelSettings->getAnime(),
            'AnimeData' => $ModelAnime->get_AnimeData($Uid),
            'UserAnimeStatus' => $UserAnimeStatus,
            'EpisodeFirstData' => $ModelEpisode->get_EpisodeFirstData($Uid),
            'AnimeTypeandEpisodeCountData' => $ModelAnime->get_EpisodeAndEmbedData($Uid),
            'AnimeRecommendedData' => $ModelAnime->AnimeRecommended(),

            'topanime' => $ModelAnime->topanime(), //Değiş sistem yapılacak
            'topmonthanime' => $ModelAnime->topmonthanime(), //Değiş sistem yapılacak
            'topyearsanime' => $ModelAnime->topyearsanime(), //Değiş sistem yapılacak
        ];
        return view('Frontend/' . $this->anitiumthemes . '/Anime', $Data);
    }

    //Anime Bilgisi Sayfasında User Anime Status Durumunu Günceller.
    public function UserAnimeStatus($Uid, $AnimeStatus)
    {
        $UserAnimeStatus = new UserStatusModel();
        $UserID = auth()->id();

        $UserAnimeStatus->where('user_id', $UserID)
            ->where('anime_uid', $Uid)
            ->delete();

        if ($AnimeStatus != 7) {
            $UserAnimeStatus->insert([
                'user_id' => $UserID,
                'anime_uid' => $Uid,
                'user_status' => $AnimeStatus
            ]);
        }
        return redirect()->back();
    }

    //Anime Bilgileri Sayfasında Sezon Bilgisi Çeker.
    public function get_AnimeSeason($uid)
    {
        $ModelAnime = new AnimeModel();

        $AnimeSeasonData = $ModelAnime->AnimeSeasonReleated($uid);
        return $this->response->setJSON(
            [
                'html' => view('Frontend/' . $this->anitiumthemes . '/Ajax/Get_Season', ['SeasonData' => $AnimeSeasonData])
            ]
        );
    }


    //Aşağıdaki function, anime details kısmındaki anime admin menu içindeki anime delete çalıştırır.
    public function AnimeDeleteID()
    {
        $ModelAnime = new AnimeModel();
        $AnimeID = $this->request->getPost('Anime_ID');
        $ModelAnime->delete($AnimeID);
        return redirect()->to('/admin');
    }

    //Note Aşağıdaki Anime_Watch function "today, month, years yenilenmelidir."
    //Last Episode kısmında daha fazla göstermesi için...
    public function Anime_Watch()
    {
        $ModelSettings = new Settings();
        $ModelSchedule = new AnimeSchedule();
        $ModelAnime = new AnimeModel();

        $Uid = $_GET['uid'];

        $Data = [
            'Settings' => $ModelSettings->getEpisode(),
            'AnimeData' => $ModelAnime->get_AnimeData($Uid),
            'AnimeRecommendedData' => $ModelAnime->AnimeRecommended(),
            'EpisodeSchedule' => $ModelSchedule->get_EpisodeSchedule($Uid),

            'AnimeTypeandEpisodeCountData' => $ModelAnime->get_EpisodeAndEmbedData($Uid),


            'topanime' => $ModelAnime->topanime(), //Değiş sistem yapılacak
            'topmonthanime' => $ModelAnime->topmonthanime(), //Değiş sistem yapılacak
            'topyearsanime' => $ModelAnime->topyearsanime(), //Değiş sistem yapılacak
        ];
        return view('Frontend/' . $this->anitiumthemes . '/Watch', $Data);
    }

    public function Get_EpisodeList($Uid)
    {
        $ModelEpisode = new EpisodeModel();
        $ModelAnime = new AnimeModel();

        $EpisodeListData = $ModelEpisode->get_EpisodeList($Uid);
        $EpisodeCount = count($EpisodeListData);

        $AnimeName = $ModelAnime->where('uid', $Uid)->first()['ani_name'];

        if ($EpisodeCount > 54) {
            $view = 'Frontend/' . $this->anitiumthemes . '/Ajax/Get_EpisodeSeasonList';
        } else {
            $view = 'Frontend/' . $this->anitiumthemes . '/Ajax/Get_EpisodeList';
        }

        $responseData = [
            'status' => true,
            'html' => view($view, compact('EpisodeListData', 'EpisodeCount', 'AnimeName')),
            'totalItems' => $EpisodeCount
        ];
        return $this->response->setJSON($responseData);
    }

    //   return $this->response->setJSON($embedFirstData);

    public function Get_EpisodeServer($uid, $ep_id_name)
    {
        $ModelEpisodeEmbed = new EpisodeEmbedModel();
        $ModelEpisodeViews = new EpisodeViews();

        $embedData = $ModelEpisodeEmbed->getGroupedByEmbedType($uid, $ep_id_name);
        //return $this->response->setJSON($embedData);
        $embedFirstData = $ModelEpisodeEmbed->getByEmbedFirst($uid, $ep_id_name);
        $embedID = $ep_id_name;
        $embedUID = $uid;
        $responseData = [
            'status' => true,
            'embedFirst' => $embedFirstData,
            'html' => view('Frontend/' . $this->anitiumthemes . '/Ajax/Get_EpisodeServer', compact('embedData', 'embedID', 'embedUID')),
        ];
        $ModelEpisodeViews->episodeviewsupdate($uid, $ep_id_name);
        return $this->response->setJSON($responseData);
    }

    public function Get_EpisodePrevNext($Uid, $EpİD)
    {
        $ModelEpisode = new EpisodeModel();
        $PrevNextData = $ModelEpisode->get_EpisodePrevandNext($Uid, $EpİD);
        $embedUID = $Uid;

        $responseData = [
            'status' => true,
            'html' => view('Frontend/' . $this->anitiumthemes . '/Ajax/Get_EpisodePrevNext', compact('PrevNextData', 'embedUID')),
        ];
        return $this->response->setJSON($responseData);
    }

    //Episode Vote ve Rating Sistemidir.
    public function Post_EpisodeVote($Vote, $Uıd, $EpID)
    {
        $ModelEpisodeVote = new EpisodeVote();
        $ModelEpisodeVote->Post_EpisodeVote($Vote, $Uıd, $EpID);
    }

    //Episode Altındaki Report Modal.
    public function Post_EpisodeReport()
    {
        $ModelEpisodeReport = new EpisodeReport();
        $Data = [
            'report_url' => $this->request->getPost('report_url'),
            'report_type' => $this->request->getPost('report_type'),
            'report_head' => $this->request->getPost('report_head'),
            'report_content' => $this->request->getPost('report_content'),
        ];
        $ModelEpisodeReport->insert($Data);
        return redirect()->back()->with('success', 'Your success.');
    }

    public function Get_EpisodeVote($uid, $epid)
    {
        $ModelEpisodeVote = new EpisodeVote();

        $responseData = [
            'html' => view(
                'Frontend/' . $this->anitiumthemes . '/Ajax/Get_Rating',
                [
                    'epUID' => $uid,
                    'epID' => $epid,
                    'epvotecount' => $ModelEpisodeVote->episodevotecount($uid, $epid),
                    'epvotescore' => $ModelEpisodeVote->episodevotescore($uid, $epid)
                ]
            )
        ];
        return $this->response->setJSON($responseData);
    }

    ///Episode Altındaki Yorum Sistemidir.
    public function Get_EpisodeCommentSystem($uid, $ep_id_name)
    {
        $ModelSettings = new Settings();
        $ModelEpisodeComment = new EpisodeCommentModel();

        $settings = $ModelSettings->getEpisode();
        $epcommentcount = $ModelEpisodeComment->epcommentcount($uid, $ep_id_name);

        $epUID = $uid;
        $epID = $ep_id_name;

        $responseData = [
            'status' => true,
            'html' => view('Frontend/' . $this->anitiumthemes . '/Ajax/Get_EpisodeCommentSystem', compact('settings', 'epcommentcount', 'epUID', 'epID')),
        ];
        return $this->response->setJSON($responseData);
    }

    //Daha çok yarum çağırma yeri...
    public function Get_EpisodeCommentSystemMore($uid, $ep_id_name)
    {
        $ModelEpisodeComment = new EpisodeCommentModel();

        $data = [
            'BoardCommentList' => $ModelEpisodeComment->postlist($uid, $ep_id_name),
            'pager' => $ModelEpisodeComment->pager,
        ];

        $chunkedData = array_chunk($data['BoardCommentList'], 5);

        $page = $this->request->getVar('page') ?? 1;
        $CommentData = isset($chunkedData[$page - 1]) ? $chunkedData[$page - 1] : [];
        $responseData = [
            'page' => [
                'status' =>  $page < count($chunkedData) ? true : false,
                'totalPages' => count($chunkedData),
            ],
            'html' => view('Frontend/' . $this->anitiumthemes . '/Ajax/Get_EpisodeCommentSystemMore', compact('CommentData', 'uid', 'ep_id_name'))
        ];
        return $this->response->setJSON($responseData);
    }

    //Episode Comment İnsert
    public function EpisodeCommentİnsert()
    {
        $animemodel = new AnimeModel();
        $uid = $this->request->getPost('post_ani');
        $anime = $animemodel->where('uid', $uid)->first();
        $ani_name = $anime['ani_name'];
        $nameParts = explode(',', $ani_name, 2);

        if (count($nameParts) > 1) {
            $name = trim($nameParts[1]);
        } else {
            $name = $ani_name;
        }
        $slug = strtolower(str_replace(' ', '-', implode(' ', array_slice(explode(' ', preg_replace('/[\/*!\^%&\/()=?.:",]/', '', $name)), 0, 10))));

        $eps = $this->request->getPost('post_ep');
        $url = base_url("watch?anime={$slug}&uid={$uid}&eps={$eps}");
        $userid = auth()->id();
        $episodecommentmodel = new EpisodeCommentModel();
        $data = [
            'post_ani' => $this->request->getPost('post_ani'),
            'post_ep' => $this->request->getPost('post_ep'),
            'user_id' => $userid,
            'post_id' => rand(4, getrandmax()),
            'post_spo' => $this->request->getPost('post_spo'),
            'post_content' => $this->request->getPost('post_content'),

        ];
        $episodecommentmodel->insert($data);
        return redirect()->to($url);
    }

    //Episode Reply Comment İnsert
    public function EpisodeCommentReplyİnsert()
    {
        $animemodel = new AnimeModel();
        $uid = $this->request->getPost('uid');
        $anime = $animemodel->where('uid', $uid)->first();
        $ani_name = $anime['ani_name'];
        $nameParts = explode(',', $ani_name, 2);

        if (count($nameParts) > 1) {
            $name = trim($nameParts[1]);
        } else {
            $name = $ani_name;
        }
        $slug = strtolower(str_replace(' ', '-', implode(' ', array_slice(explode(' ', preg_replace('/[\/*!\^%&\/()=?.:",]/', '', $name)), 0, 10))));

        $eps = $this->request->getPost('eps');
        $url = base_url("watch?anime={$slug}&uid={$uid}&eps={$eps}");

        $userid = auth()->id();
        $episoderepycommentmodel = new EpisodeCommentRepyModel();
        $data = [
            'post_id' => $this->request->getPost('post_id'),
            'user_id' => $userid,
            'post_u_id' => rand(4, getrandmax()),
            'post_content' => $this->request->getPost('post_content'),

        ];
        $episoderepycommentmodel->insert($data);
        return redirect()->to($url);
    }

    //Episode Main Comment Report
    public function Post_CommentMainReport()
    {
        $ModelEpisodeCommentReport = new EpisodeCommentReport();
        $data = [
            'report_main_id' => $this->request->getPost('report_main_id'),
        ];
        $ModelEpisodeCommentReport->insert($data);
        return redirect()->back()->with('success', 'Your success.');
    }

    //Episode Reply Comment Report
    public function Post_CommentReplyReport()
    {
        $ModelEpisodeCommentReport = new EpisodeCommentReport();
        $data = [
            'report_repy_id' => $this->request->getPost('report_repy_id'),
        ];
        $ModelEpisodeCommentReport->insert($data);
        return redirect()->back()->with('success', 'Your success.');
    }

    // Episode Main/Like alakalı Functionlar.
    public function getepmainlike($postid)
    {
        $ModelEpisodeMainRep = new EpisodeMainRep();

        $responseData = [
            'html' => view(
                'Frontend/' . $this->anitiumthemes . '/Ajax/Get_EpisodeMainLike',
                [
                    'epvotecount' => $ModelEpisodeMainRep->episoderepcount($postid),
                ]
            )
        ];
        return $this->response->setJSON($responseData);
    }
    public function geteprepylike($postid)
    {
        $ModelEpisodeReplyRep = new EpisodeRepyRep();

        $responseData = [
            'html' => view(
                'Frontend/' . $this->anitiumthemes . '/Ajax/Get_EpisodeReplyLike',
                [
                    'epvotecount' => $ModelEpisodeReplyRep->episoderepcount($postid),
                ]
            )
        ];
        return $this->response->setJSON($responseData);
    }
    public function episodemainlike($postid)
    {
        $episodemainrepmodel = new EpisodeMainRep();
        $userid = auth()->id();
        $episodemainrepmodel->episodemainrep($postid, $userid);
    }
    public function episodemaindislike($postid)
    {
        $episodemainrepmodel = new EpisodeMainRep();
        $userid = auth()->id();
        $episodemainrepmodel->episodemaindisrep($postid, $userid);
    }
    public function episoderepylike($postid)
    {
        $episoderepyrepmodel = new EpisodeRepyRep();
        $userid = auth()->id();
        $episoderepyrepmodel->episoderepyrep($postid, $userid);
    }
    public function episoderepydislike($postid)
    {
        $episoderepyrepmodel = new EpisodeRepyRep();
        $userid = auth()->id();
        $episoderepyrepmodel->episoderepydisrep($postid, $userid);
    }
    //Rastgele anime bulur ve açar.
    public function RandomAnime()
    {
        $ModelAnime = new AnimeModel();
        $all_ids = $ModelAnime->select('id')->findAll();
        $random_id = $all_ids[array_rand($all_ids)];
        $find = $ModelAnime->find($random_id);
        header('Location: /anime/' . $find[0]['uid'] . '/' . urlencode($find[0]['ani_name']));
        exit();
    }

    public function User_LogOUT()
    {
        auth()->logout();
        return redirect()->to(base_url("/"));
    }

    //User Profile / WatchList ve Settings Ayarları
    public function User_Profile($username, $userwatchstatus = null, $mystatus = null)
    {
        $ModelSettings = new Settings();

        if ($username !== 'profile') {
            return redirect()->to('/');
        }
        if ($userwatchstatus === 'status') {
            return $this->WatchList($mystatus);
        }
        if ($userwatchstatus === 'settings') {
            return $this->UserSettings();
        }
        if ($userwatchstatus === $username || is_null($userwatchstatus)) {
            return view('Frontend/' . $this->anitiumthemes . '/User/Profile', [
                'Settings' => $ModelSettings->getUserProfile(),
            ]);
        }
    }

    public function WatchList(&$mystatus)
    {
        $status_array = [
            'favorite' => [1],
            'watching' => [2],
            'on-hold' => [3],
            'plan-to-watch' => [4],
            'dropped' => [5],
            'completed' => [6]
        ];

        if (isset($status_array[$mystatus])) {
            $mystatus = $status_array[$mystatus];
        }

        $ModelUserStatus = new UserStatusModel();
        $ModelAnime = new AnimeModel();
        $ModelSettings = new Settings();

        $getuserdata = auth()->id();
        $status = $ModelUserStatus->where('user_id', $getuserdata)->where('user_status', $mystatus)->paginate(25);
        $visited = [];

        foreach ($status as $anime) {
            $animetv = $ModelAnime->where('uid', $anime['anime_uid'])->first();
            if (!in_array($animetv['uid'], $visited)) {
                $visited[] = [
                    'ani_name' => $animetv['ani_name'],
                    'uid' => $animetv['uid'],
                    'ani_poster' => $animetv['ani_poster'],
                    'ani_rate' => $animetv['ani_rate'],
                    'ani_source' => $animetv['ani_source'],
                    'ani_ep' => $animetv['ani_ep'],
                    'ani_type' => $animetv['ani_type'],
                    'ani_score' => $animetv['ani_score'],
                ];
            }
        }
        $itemsPerPage = 25;
        $totalItems = count($visited);
        $totalPages = ceil($totalItems / $itemsPerPage);
        $currentPage = isset($_GET['page']) ? (int)$_GET['page'] : 1;
        $currentPage = max($currentPage, 1);
        $currentPage = min($currentPage, $totalPages);

        $offset = ($currentPage - 1) * $itemsPerPage;
        $visited = array_slice($visited, $offset, $itemsPerPage);

        return view('Frontend/' . $this->anitiumthemes . '/User/WatchList', [
            'Settings' => $ModelSettings->getUserProfile(),
            'anime_status' => $visited,
            'pager' => [
                'totalItems' => $totalItems,
                'itemsPerPage' => $itemsPerPage,
                'currentPage' => $currentPage,
                'totalPages' => $totalPages,
            ],
        ]);
    }

    public function UserSettings()
    {
        return view('Frontend/' . $this->anitiumthemes . '/User/Settings', [
            'Settings' => (new Settings())->getUserProfile(),
        ]);
    }

    public function UserSettingsUpdate()
    {
        $usermodel = new UserModelUP();
        $id = $this->request->getPost('id');

        $data = [
            'username' => $this->request->getPost('username'),
            'schedule_status' => $this->request->getPost('schedule_status'),
            'watchlist_status' => $this->request->getPost('watchlist_status'),
            'raw_status' => $this->request->getPost('raw_status'),
            'sub_status' => $this->request->getPost('sub_status'),
            'dub_status' => $this->request->getPost('dub_status'),
            'turk_status' => $this->request->getPost('turk_status'),
        ];

        $usermodel->updateuser($id, $data);
        return redirect()->to(base_url('/user/profile/settings'));
    }

    public function UserProfileUpdate()
    {
        $usermodel = new UserModelUP();
        $id = $this->request->getPost('id');

        if ($avatar = $this->request->getFile('avatar')) {
            if ($avatar->isValid() && !$avatar->hasMoved()) {
                $newName = $avatar->getRandomName();
                $avatar->move('./assest/user/avatar', $newName);
                $avatarPath = '/assest/user/avatar/' . $newName;
            }
        }

        if (isset($avatarPath)) {
            $data['avatar'] = $avatarPath;
        }

        $usermodel->updateuser($id, $data);
        return redirect()->to(base_url('/user/profile'));
    }

    //Board Üyelerin Profilleri ve WatchList
    public function Community_User($UserName, $WatchListStatus = null)
    {
        if (is_null($WatchListStatus)) {
            return $this->Community_Profile($UserName);
        }
        if (in_array($WatchListStatus, ['all', 'favorite', 'watching', 'on-hold', 'plan-to-watch', 'dropped', 'completed'])) {
            return $this->Community_WatchList($UserName, $WatchListStatus);
        }
        return redirect()->to('/');
    }


    //Community Profil Burdadır.
    public function Community_Profile($UserName)
    {
        $ModelSettings = new Settings();
        $ModelUser = new UserModel();
        $ModelUserStatus = new UserStatusModel();
        $ModelAnime = new AnimeModel();
        $ModelUserGroup = new UserGroupModel();
        $ModelEpisodeComment = new EpisodeCommentModel();
        $ModelCommunityPost = new CommunityPostModel();
        $ModelCommunity = new CommunityModel();

        $getuserdata = $ModelUser->where('username', $UserName)->first();
        if (!$getuserdata) {
            return redirect()->to('/');
        }
        $userid = $getuserdata->id;
        $usergroups = $ModelUserGroup->select('group')->where('user_id', $userid)->get()->getResult();
        $useralldata = $ModelUserStatus->where('user_id', $userid)->orderBy('created_at', 'DESC')->findAll();
        $usercommunitypostdata = $ModelCommunityPost->boardusercomment($userid);
        $usercommunitydata = $ModelCommunity->boardusercomment($userid);
        $usercommentdata = $ModelEpisodeComment->boardusercomment($userid);
        $commentdata = array_merge($usercommunitypostdata, $usercommunitydata, $usercommentdata);
        usort($commentdata, function ($a, $b) {
            return $a['created_at'] < $b['created_at'] ? 1 : ($a['created_at'] > $b['created_at'] ? -1 : 0);
        });


        $animelist = array();
        foreach ($useralldata as $row) {
            $uid = $row['anime_uid'];
            $status = $row['user_status'];
            $created_at = $row['created_at'];
            $animename = $ModelAnime->select('ani_name, ani_poster')->where('uid', $uid)->first();
            $animelist[] = ['ani_name' => $animename['ani_name'], 'ani_poster' => $animename['ani_poster'], 'status' => $status, 'uid' => $uid, 'created_at' => $created_at];
        }

        return view('Frontend/' . $this->anitiumthemes . '/BoardUser/Profile', [
            'Settings' => $ModelSettings->getBoardProfile(),
            'getuserdata' => $getuserdata,
            'getybcomment' =>  $commentdata,
            'getgroup' => $usergroups,
            'animelist' => $animelist
        ]);
    }

    //Community WatchList Buradadır.
    public function Community_WatchList($UserName, $WatchListStatus)
    {
        $ModelSettings = new Settings();
        $ModelUserStatus = new UserStatusModel();
        $ModelAnime = new AnimeModel();
        $ModelUser = new UserModel();

        $watchlistsort = $_GET['sort'];
        $status_array = [
            'all' => [1, 2, 3, 4, 5, 6],
            'favorite' => [1],
            'watching' => [2],
            'on-hold' => [3],
            'plan-to-watch' => [4],
            'dropped' => [5],
            'completed' => [6]
        ];
        if ($WatchListStatus == '0') {
            $WatchListStatus = [1, 2, 3, 4, 5, 6];
        } elseif (isset($status_array[$WatchListStatus])) {
            $WatchListStatus = $status_array[$WatchListStatus];
        }
        $getuserdata = $ModelUser->where('username', $UserName)->first();
        $getuserid = $getuserdata->id;
        $status = $ModelUserStatus->where('user_id', $getuserid)->whereIn('user_status', $WatchListStatus)->findAll();
        $visited = [];
        foreach ($status as $anime) {
            $animetv = $ModelAnime->where('uid', $anime['anime_uid'])->first();
            if (!in_array($animetv['ani_name'], $visited)) {
                $visited[] = [
                    'ani_name' => $animetv['ani_name'],
                    'uid' => $animetv['uid'],
                    'ani_poster' => $animetv['ani_poster'],
                    'ani_rate' => $animetv['ani_rate'],
                    'ani_source' => $animetv['ani_source'],
                    'ani_ep' => $animetv['ani_ep'],
                    'ani_aired' => $animetv['ani_aired'],
                    'ani_type' => $animetv['ani_type'],
                    'ani_score' => $animetv['ani_score'],
                    'view_count_years' => $animetv['view_count_years'],
                    'created_at' => $animetv['created_at'],
                    'updated_at' => $animetv['updated_at'],
                    'status' => $anime['user_status'],
                ];
            }
        }

        if ($watchlistsort == 'recently-added') {
            usort($visited, function ($a, $b) {
                return strtotime($b['created_at']) - strtotime($a['created_at']);
            });
        }
        if ($watchlistsort == 'recently-updated') {
            usort($visited, function ($a, $b) {
                return strtotime($b['updated_at']) - strtotime($a['updated_at']);
            });
        }
        if ($watchlistsort == 'score') {
            usort($visited, function ($a, $b) {
                if (empty($a['ani_score']) && empty($b['ani_score'])) return 0;
                if (empty($a['ani_score'])) return 1;
                if (empty($b['ani_score'])) return -1;
                return ($b['ani_score'] < $a['ani_score']) ? -1 : 1;
            });
        }
        if ($watchlistsort == 'a-z') {
            usort($visited, function ($a, $b) {
                return strcmp($a['ani_name'], $b['ani_name']);
            });
        }
        if ($watchlistsort == 'released-date') {
            usort($visited, function ($a, $b) {
                return strtotime($b['ani_aired']) - strtotime($a['ani_aired']);
            });
        }

        if ($watchlistsort == 'most-watched') {
            usort($visited, function ($a, $b) {
                return $b['view_count_years'] - $a['view_count_years'];
            });
        }
        $itemsPerPage = 25;
        $totalItems = count($visited);
        $totalPages = ceil($totalItems / $itemsPerPage);
        $currentPage = isset($_GET['page']) ? (int)$_GET['page'] : 1;
        $currentPage = max($currentPage, 1);
        $currentPage = min($currentPage, $totalPages);

        $offset = ($currentPage - 1) * $itemsPerPage;
        $visited = array_slice($visited, $offset, $itemsPerPage);

        return view('Frontend/' . $this->anitiumthemes . '/BoardUser/WatchList', [
            'Settings' => $ModelSettings->getBoardProfile(),
            'getuserdata' => $getuserdata,
            'anistatus' => $visited,
            'pager' => [
                'totalItems' => $totalItems,
                'itemsPerPage' => $itemsPerPage,
                'currentPage' => $currentPage,
                'totalPages' => $totalPages,
            ],
        ]);
    }

    public function Community_Board()
    {
        $ModelSettings = new Settings();
        $ModelCommunity = new CommunityModel();

        $updates = $ModelCommunity->updates();
        $general = $ModelCommunity->general();
        $suggestion = $ModelCommunity->suggestion();
        $question = $ModelCommunity->question();
        $discussion = $ModelCommunity->discussion();
        $feedback = $ModelCommunity->feedback();

        $Data = [
            'Settings' => $ModelSettings->getBoard(),
            'updates' => $updates,
            'general' => $general,
            'suggestion' => $suggestion,
            'question' => $question,
            'discussion' => $discussion,
            'feedback' => $feedback,
        ];

        return view('Frontend/' . $this->anitiumthemes . '/Community/Board', $Data);
    }

    //GetBoard POST
    public function Get_BoardPost()
    {

        $ModelCommunity = new CommunityModel();
        $getboardpost = $ModelCommunity->boardlastpost();

        $data = [
            'boardpost' => $getboardpost,
            'pager' => $ModelCommunity->pager,
        ];

        $chunkedData = array_chunk($data['boardpost'], 10);

        $page = $this->request->getVar('page') ?? 1;
        $pageData = isset($chunkedData[$page - 1]) ? $chunkedData[$page - 1] : [];

        $responseData = [
            'page' => [
                'status' =>  $page < count($chunkedData) ? true : false,
                'totalPages' => count($chunkedData),
            ],
            'html' => view('Frontend/' . $this->anitiumthemes . '/Ajax/Get_BoardPost', compact('pageData'))
        ];
        return $this->response->setJSON($responseData);
    }

    //GetBoard MyPost
    public function Community_MyBoard()
    {
        $ModelSettings = new Settings();
        $ModelCommunity = new CommunityModel();

        $updates = $ModelCommunity->updates();
        $general = $ModelCommunity->general();
        $suggestion = $ModelCommunity->suggestion();
        $question = $ModelCommunity->question();
        $discussion = $ModelCommunity->discussion();
        $feedback = $ModelCommunity->feedback();

        $Data = [
            'Settings' => $ModelSettings->getBoard(),
            'updates' => $updates,
            'general' => $general,
            'suggestion' => $suggestion,
            'question' => $question,
            'discussion' => $discussion,
            'feedback' => $feedback,
        ];

        return view('Frontend/' . $this->anitiumthemes . '/Community/My-Board', $Data);
    }

    public function Get_BoardMyPost()
    {

        $ModelCommunity = new CommunityModel();
        $userid = auth()->id();

        $getboardpost = $ModelCommunity->boardmypost($userid);

        $data = [
            'boardpost' => $getboardpost,
            'pager' => $ModelCommunity->pager,
        ];

        $chunkedData = array_chunk($data['boardpost'], 10);

        $page = $this->request->getVar('page') ?? 1;
        $pageData = isset($chunkedData[$page - 1]) ? $chunkedData[$page - 1] : [];

        $responseData = [
            'page' => [
                'status' =>  $page < count($chunkedData) ? true : false,
                'totalPages' => count($chunkedData),
            ],
            'html' => view('Frontend/' . $this->anitiumthemes . '/Ajax/Get_BoardPost', compact('pageData'))
        ];
        return $this->response->setJSON($responseData);
    }

    //GetBoard Tag
    public function Community_Tag()
    {
        $ModelSettings = new Settings();
        $ModelCommunity = new CommunityModel();

        $updates = $ModelCommunity->updates();
        $general = $ModelCommunity->general();
        $suggestion = $ModelCommunity->suggestion();
        $question = $ModelCommunity->question();
        $discussion = $ModelCommunity->discussion();
        $feedback = $ModelCommunity->feedback();
        $Data = [
            'Settings' => $ModelSettings->getBoard(),
            'updates' => $updates,
            'general' => $general,
            'suggestion' => $suggestion,
            'question' => $question,
            'discussion' => $discussion,
            'feedback' => $feedback,
        ];
        return view('Frontend/' . $this->anitiumthemes . '/Community/Board-Tag', $Data);
    }

    public function Get_BoardTagPost()
    {
        $ModelCommunity = new CommunityModel();

        $tag = $this->request->getVar('type');
        $tagValue = in_array($tag, ["1", "2", "3", "4", "5", "6"]) ? $tag : 0;

        $getboardpost = $ModelCommunity->boardtag($tag);

        $data = [
            'boardpost' => $getboardpost,
            'pager' => $ModelCommunity->pager,
        ];

        $chunkedData = array_chunk($data['boardpost'], 10);

        $page = $this->request->getVar('page') ?? 1;
        $pageData = isset($chunkedData[$page - 1]) ? $chunkedData[$page - 1] : [];

        $responseData = [
            'page' => [
                'status' =>  $page < count($chunkedData) ? true : false,
                'totalPages' => count($chunkedData),
            ],
            'html' => view('Frontend/' . $this->anitiumthemes . '/Ajax/Get_BoardPost', compact('pageData'))
        ];
        return $this->response->setJSON($responseData);
    }

    //GetBoar NewPOST gönderme yeridir.
    public function Community_NewPost()
    {
        $ModelSettings = new Settings();

        return view(
            'Frontend/' . $this->anitiumthemes . '/Community/New-Post',
            [
                'Settings' => $ModelSettings->getBoard(),
            ]
        );
    }

    public function Post_CommunityNewPost()
    {
        $ModelCommunity = new CommunityModel();
        $Data = [
            'user_id' => $this->request->getPost('user_id'),
            'post_id' => $this->request->getPost('post_id'),
            'post_tag' => $this->request->getPost('post_tag'),
            'post_head' => $this->request->getPost('post_head'),
            'post_content' => $this->request->getPost('post_content'),
        ];
        $ModelCommunity->insert($Data);
        return redirect()->to(base_url('/community/board'));
    }


    public function Community_BoardViewPost()
    {
        $ModelCommunity = new CommunityModel();
        $ModelCommunityPost = new CommunityPostModel();
        $ModelSettings = new Settings();

        $pid = $_GET['pid'];
        $boardviewpost = $ModelCommunity->postview($pid)[0];
        $boardviewpostcount = $ModelCommunityPost->postcount($pid);
        $Data = [
            'Settings' => $ModelSettings->getBoard(),
            'boardviewpost' => $boardviewpost,
            'boardviewpostcount' => $boardviewpostcount,
        ];

        return view('Frontend/' . $this->anitiumthemes . '/Community/View-Post', $Data);
    }

    public function Get_BoardViewPostMore()
    {
        $ModelCommunity = new CommunityPostModel();

        $pid = $this->request->getVar('pid');
        $boardviewpostlist = $ModelCommunity->postlist($pid);

        $data = [
            'boardviewpostlist' => $boardviewpostlist,
            'pager' => $ModelCommunity->pager,
        ];

        $chunkedData = array_chunk($data['boardviewpostlist'], 5);

        $page = $this->request->getVar('page') ?? 1;
        $pageData = isset($chunkedData[$page - 1]) ? $chunkedData[$page - 1] : [];

        $responseData = [
            'page' => [
                'status' =>  $page < count($chunkedData) ? true : false,
                'totalPages' => count($chunkedData),
            ],
            'html' => view('Frontend/' . $this->anitiumthemes . '/Ajax/Get_BoardViewPostMore', compact('pageData'))
        ];
        return $this->response->setJSON($responseData);
    }

    //Board konuların altına yorum main insert
    public function Post_CommunityMainİnsert()
    {
        $ModelCommunityPost = new CommunityPostModel();
        $data = [
            'user_id' => $this->request->getPost('user_id'),
            'post_id' => $this->request->getPost('post_id'),
            'post_c_id' => $this->request->getPost('post_c_id'),
            'post_content' => $this->request->getPost('post_content'),
        ];
        $ModelCommunityPost->insert($data);
        return redirect()->back()->with('success', 'Your success.');
    }

    //Board konuların altındaki yorum reply insert
    public function Post_CommunityReplyİnsert()
    {
        $ModelCommunityReplyPost = new CommunityRepyPostModel();
        $data = [
            'user_id' => $this->request->getPost('user_id'),
            'post_u_id' => $this->request->getPost('post_u_id'),
            'post_c_id' => $this->request->getPost('post_c_id'),
            'post_content' => $this->request->getPost('post_content'),
        ];
        $ModelCommunityReplyPost->insert($data);
        return redirect()->back()->with('success', 'Your success.');
    }

    //Community Vote rep
    public function Post_CommunityVoteLike($postid)
    {
        $communitymainpostmodel = new CommunityVote();
        $userid = auth()->id();
        $communitymainpostmodel->communityrep($postid, $userid);
    }

    //Community Vote disrep
    public function Post_CommunityVoteDisLike($postid)
    {
        $communitymainpostmodel = new CommunityVote();
        $userid = auth()->id();
        $communitymainpostmodel->communitydisrep($postid, $userid);
    }

    //Get Community Vote
    public function Get_CommunityVote($postid)
    {
        $ModelCommunityVote = new CommunityVote();

        $responseData = [
            'html' => view(
                'Frontend/' . $this->anitiumthemes . '/Ajax/Get_CommunityVote',
                [
                    'epvotecount' => $ModelCommunityVote->communityrepcount($postid),
                ]
            )
        ];
        return $this->response->setJSON($responseData);
    }

    //Community Main Like Post
    public function Post_CommunityMainLike($postid)
    {
        $ModelCommunityMainRep = new CommunityMainRep();
        $userid = auth()->id();
        $ModelCommunityMainRep->communityrep($postid, $userid);
    }

    //Community Main Dislike Post
    public function Post_CommunityMainDisLike($postid)
    {
        $ModelCommunityMainRep = new CommunityMainRep();
        $userid = auth()->id();
        $ModelCommunityMainRep->communitydisrep($postid, $userid);
    }

    //Get CommunityMainLike
    public function Get_CommunityMainLike($postid)
    {
        $ModelCommunityMainRep = new CommunityMainRep();

        $responseData = [
            'html' => view(
                'Frontend/' . $this->anitiumthemes . '/Ajax/Get_CommunityMainLike',
                [
                    'epvotecount' => $ModelCommunityMainRep->communityrepcount($postid),
                ]
            )
        ];
        return $this->response->setJSON($responseData);
    }

    //Community Reply Like Post
    public function Post_CommunityReplyLike($postid)
    {
        $ModelCommunityReply = new CommunityRepyRep();
        $userid = auth()->id();
        $ModelCommunityReply->communityrep($postid, $userid);
    }

    //Community Reply Dislike Post
    public function Post_CommunityReplyDisLike($postid)
    {
        $ModelCommunityReply = new CommunityRepyRep();
        $userid = auth()->id();
        $ModelCommunityReply->communitydisrep($postid, $userid);
    }

    //Get Community Reply Like
    public function Get_CommunityReplyLike($postid)
    {
        $ModelCommunityReply = new CommunityRepyRep();

        $responseData = [
            'html' => view(
                'Frontend/' . $this->anitiumthemes . '/Ajax/Get_CommunityReplyLike',
                [
                    'epvotecount' => $ModelCommunityReply->communityrepcount($postid),
                ]
            )
        ];
        return $this->response->setJSON($responseData);
    }

    //Board Comment Main Report Kısmıdır
    public function Post_BoardMainComment()
    {
        $commentmainmodel = new BoardCommentReport();
        $data = [
            'report_main_id' => $this->request->getPost('report_main_id'),
        ];
        $commentmainmodel->insert($data);
        return redirect()->back()->with('success', 'Your success.');
    }

    //Board Comment Reply Report
    public function Post_BoardReplyComment()
    {
        $commentrepymodel = new BoardCommentReport();
        $data = [
            'report_repy_id' => $this->request->getPost('report_repy_id'),
        ];
        $commentrepymodel->insert($data);
        return redirect()->back()->with('success', 'Your success.');
    }

    //Board Post Report
    public function Post_BoardReport()
    {
        $commentmainmodel = new BoardReport();
        $data = [
            'report_main_id' => $this->request->getPost('report_main_id'),
        ];
        $commentmainmodel->insert($data);
        return redirect()->back()->with('success', 'Your success.');
    }
}
