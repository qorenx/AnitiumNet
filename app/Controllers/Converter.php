<?php

namespace App\Controllers;

use App\Models\{
    EpisodeEmbedModel,
    AnimeModel,
    Settings,
    EpisodeModel
};

use CodeIgniter\API\ResponseTrait;

class Converter extends BaseController
{
    use ResponseTrait;




    // Video embed get yapar.   Bu sayede id göre episode embed çekmiş olur.
    public function get_embed($uid, $eps, $embedid)
    {
        $embedmodel = new EpisodeEmbedModel();
        $embed = $embedmodel->getEmbed($embedid);
        $url = $embed[0];

        $embedProviders = [
            'youtube.com'               => 'get_embed_youtube',
            'youtu.be'                  => 'get_embed_youtube',
            'dailymotion.com'           => 'get_embed_dailymotion',
            'vimeo.com'                 => 'get_embed_vimeo',
            'doodstream.com'            => 'get_embed_doodstream',
            'awish.pro'                 => 'get_embed_awish',
            'sbani.pro'                 => 'get_embed_sbani',
            'dood.wf'                   => 'get_embed_doodwf',
            'sbone.pro'                 => 'get_embed_sbone',
            'mp4upload.com'             => 'get_embed_mp4upload',
            'animein.fun'               => 'get_embed_animein',
            'oneupload.to'              => 'get_embed_oneupload',
            '2embed.cc'                 => 'get_embed_2embed',
            '2embed.skin'               => 'get_embed_2embed',
            'asia1.com.ge'              => 'get_embed_2embed',
            'dmmitltd.com'              => 'get_embed_2embed',
            'superstream.monster'       => 'get_embed_2embed',
            '2embed.to'                 => 'get_embed_2embed',
            'gogoanimehd.to'            => 'get_embed_gogoanime_filesystem',
            'gogoanimehd.io'            => 'get_embed_gogoanime_filesystem',
            'gogoanime.gr'              => 'get_embed_gogoanime_filesystem',
            'gogoanime.ee'              => 'get_embed_gogoanime_filesystem',
            'gogoanime.hu'              => 'get_embed_gogoanime_filesystem',
            'gogoanime.me'              => 'get_embed_gogoanime_filesystem'

        ];

        foreach ($embedProviders as $domain => $providerMethod) {
            if (strpos($url, $domain) !== false) {
                return $this->$providerMethod($uid, $eps, $url);
            }
        }

        return null;
    }

    public function get_embed_youtube($uid, $eps, $url)
    {
        $video_id = preg_replace('/^.+v=([\w-]{11}).*/', '$1', $url);
        $embed_code = '<iframe width="100%" height="100%" src="https://www.youtube.com/embed/' . $video_id . '" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>';

        $json = [$embed_code];
        $json = json_encode($json);

        return $this->response->setJSON($json);
    }

    public function get_embed_dailymotion($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe frameborder="0" width="100%" height="100%" src="//www.dailymotion.com/embed/video/' . $video_id . '" allowfullscreen></iframe>';

        $json = [$embed_code];
        $json = json_encode($json);

        return $this->response->setJSON($json);
    }

    public function get_embed_vimeo($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe src="https://player.vimeo.com/video/' . $video_id . '" width="100%" height="100%" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>';

        $json = [$embed_code];
        $json = json_encode($json);

        return $this->response->setJSON($json);
    }

    public function get_embed_doodstream($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe frameborder="0" width="100%" height="100%" src="https://doodstream.com/embed/' . $video_id . '" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>';

        $json = [$embed_code];
        $json = json_encode($json);

        return $this->response->setJSON($json);
    }

    public function get_embed_awish($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe frameborder="0" width="100%" height="100%" src="https://awish.pro/e/' . $video_id . '" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>';

        $json = [$embed_code];
        $json = json_encode($json);

        return $this->response->setJSON($json);
    }

    public function get_embed_sbani($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe frameborder="0" width="100%" height="100%" src="https://sbani.pro/e/' . $video_id . '" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>';

        $json = [$embed_code];
        $json = json_encode($json);

        return $this->response->setJSON($json);
    }

    public function get_embed_doodwf($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe frameborder="0" width="100%" height="100%" src="https://dood.wf/e/' . $video_id . '" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>';

        $json = [$embed_code];
        $json = json_encode($json);

        return $this->response->setJSON($json);
    }

    public function get_embed_sbone($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe frameborder="0" width="100%" height="100%" src="https://sbone.pro/e/' . $video_id . '" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>';

        $json = [$embed_code];
        $json = json_encode($json);

        return $this->response->setJSON($json);
    }

    public function get_embed_mp4upload($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe frameborder="0" width="100%" height="100%" src="https://www.mp4upload.com/' . $video_id . '" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>';

        $json = [$embed_code];
        $json = json_encode($json);

        return $this->response->setJSON($json);
    }

    public function get_embed_animein($uid, $eps, $url)
    {
        $embed_code = '<iframe width="100%" height="100%" src="https://animein.fun/player2/v9.php/?uid=' . $uid . '&eps=' . $eps . '" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>';

        $json = [$embed_code];
        $json = json_encode($json);

        return $this->response->setJSON($json);
    }

    public function get_embed_oneupload($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe frameborder="0" width="100%" height="100%" src="https://oneupload.to/embed-' . $video_id . '.html" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>';

        $json = [$embed_code];
        $json = json_encode($json);

        return $this->response->setJSON($json);
    }


    public function get_embed_2embed($uid, $eps, $url)
    {
        $domains = array('2embed.cc', '2embed.skin', 'asia1.com.ge', 'dmmitltd.com', 'superstream.monster');
        $domain = $domains[array_rand($domains)];
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe src="https://' . $domain . '/embedanime/' . $video_id . $eps . '" width="100%" height="100%" frameborder="0" scrolling="no" allowfullscreen></iframe>';

        $json = json_encode($embed_code);

        return $this->response->setJSON($json);
    }


    //The cache here is systematic. If the consumet API you installed is closed or cannot be accessed, it can cache close to 150 thousand files on your site. And it shows the file from there.

    public const CONSUME_API = "http://localhost:3000/anime/gogoanime/";

    public function get_embed_gogoanime_filesystem($uid, $eps, $url)
    {
        $modelsettings = new Settings();
        $animemodel = new AnimeModel();
        $episodemodel = new EpisodeModel();
        $path = parse_url($url, PHP_URL_PATH);
        $path = preg_replace('/\d+$/', '', $path);

        $api_base = '"' . self::CONSUME_API . '"';

        $temp_dir = FCPATH . 'file/gogoanime_filesystem/';

        if (!file_exists($temp_dir)) {
            mkdir($temp_dir, 0777, true);
        }
        $files = glob($temp_dir . '*');

        if (count($files) > 150000) {
            foreach ($files as $file) {
                if (is_file($file))
                    unlink($file);
            }
        }

        $playerVersion = 2 == 1 ? 'vidstack' : 'jwplayer';

        $temp_file_name = $uid . "_" . $eps;
        $temp_file = $temp_dir . $temp_file_name;

        if (!file_exists($temp_file)) {
            $play = json_decode(file_get_contents("{$api_base}/watch{$path}{$eps}"));
            [$anime] = $animemodel->where('uid', $uid)->select('ani_name, ani_poster')->find();
            [$episode] = $episodemodel->where('uid', $uid)->where('ep_id_name', $eps)->select('ep_name')->find();
            file_put_contents($temp_file, view('Frontend/Include/Player/' . $playerVersion, [
                'getAdminSettings' => $modelsettings->getAdminSettings(),
                'play' => $play,
                'anime' => $anime,
                'episode' => $episode,
            ]));
        }

        chmod($temp_file, 0777);
        $temp_url = base_url() . str_replace('\\', '/', str_replace(FCPATH, '', $temp_file));

        $iframe_code = '<iframe src="' . $temp_url . '" width="100%" height="100%" marginwidth="100%" marginheight="100%" style="box-sizing: border-box; max-width: 100%; border: 0px solid black; overflow: hidden;"></iframe>';

        return $this->response->setJSON(array($iframe_code));
    }

    //If you have installed your own consumet_api, write the url and use it.
    public function get_embed_gogoanime_multiembed($uid, $eps, $url)
    {
        $modelsettings = new Settings();
        $animemodel = new AnimeModel();
        $episodemodel = new EpisodeModel();
        $path = parse_url($url, PHP_URL_PATH);
        $path = preg_replace('/\d+$/', '', $path);

        $api_base = '"' . self::CONSUME_API . '"';

        $play = json_decode(file_get_contents("{$api_base}/watch{$path}{$eps}"));
        $multiembed = json_decode(file_get_contents("{$api_base}/servers{$path}{$eps}"));
        [$anime] = $animemodel->where('uid', $uid)->select('ani_name, ani_poster')->find();
        [$episode] = $episodemodel->where('uid', $uid)->where('ep_id_name', $eps)->select('ep_name')->find();

        $iframe_codes = array_map(function ($embed) {
            return '<iframe src="' . $embed->url . '" width="100%" height="100%" marginwidth="100%" marginheight="100%" style="box-sizing: border-box; max-width: 100%; border: 0px solid black; overflow: hidden;"></iframe>';
        }, $multiembed);

        $temp_dir = FCPATH . 'file/gogoanime_multiembed/';

        if (!file_exists($temp_dir)) {
            mkdir($temp_dir, 0777, true);
        }
        $files = glob($temp_dir . '*');

        if (count($files) > 200) {
            foreach ($files as $file) {
                if (is_file($file))
                    unlink($file);
            }
        }

        $playerVersion = 2 == 1 ? 'vidstack' : 'jwplayer';

        $temp_file_name = $uid . "_" . $eps;
        $temp_file = $temp_dir . $temp_file_name;

        if (!file_exists($temp_file)) {
            file_put_contents($temp_file, view('Frontend/İnclude/Player/' . $playerVersion, [
                'getAdminSettings' => $modelsettings->getAdminSettings(),
                'play' => $play,
                'anime' => $anime,
                'episode' => $episode,
            ]));
        }

        chmod($temp_file, 0777);
        $temp_url = base_url() . str_replace('\\', '/', str_replace(FCPATH, '', $temp_file));

        array_unshift($iframe_codes, '<iframe src="' . $temp_url . '" width="100%" height="100%" marginwidth="100%" marginheight="100%" style="box-sizing: border-box; max-width: 100%; border: 0px solid black; overflow: hidden;"></iframe>');

        return $this->response->setJSON($iframe_codes);
    }
}
