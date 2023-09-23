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
            'playtaku.net'              => 'get_embed_playtaku',
            'animein.fun'               => 'get_embed_animein',
            'oneupload.to'              => 'get_embed_oneupload',
            '2embed.cc'                 => 'get_embed_2embed',
            '2embed.skin'               => 'get_embed_2embed',
            'asia1.com.ge'              => 'get_embed_2embed',
            'dmmitltd.com'              => 'get_embed_2embed',
            'superstream.monster'       => 'get_embed_2embed',
            '2embed.to'                 => 'get_embed_2embed',
            'gogoanimehd.to'            => 'get_embed_gogoanime',
            'gogoanimehd.io'            => 'get_embed_gogoanime',
            'gogoanime.gr'              => 'get_embed_gogoanime',
            'gogoanime.ee'              => 'get_embed_gogoanime',
            'gogoanime.hu'              => 'get_embed_gogoanime',
            'gogoanime.me'              => 'get_embed_gogoanime'

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






    public function get_embed_gogoanime($uid, $eps, $url)
    {
        
        $modelsettings = new Settings();
        $animemodel = new AnimeModel();
        $episodemodel = new EpisodeModel();
        $path = parse_url($url, PHP_URL_PATH);
        $api_base = "https://api.consumet.org/anime/gogoanime";
    
        $play = json_decode(file_get_contents("{$api_base}/watch{$path}{$eps}"));
        $multiembed = json_decode(file_get_contents("{$api_base}/servers{$path}{$eps}"));
        [$anime] = $animemodel->where('uid', $uid)->select('ani_name, ani_poster')->find();
        [$episode] = $episodemodel->where('uid', $uid)->where('ep_id_name', $eps)->select('ep_name, ep_jname, ep_romaji')->find();
    
        $iframe_codes = array_map(function ($embed) {
            return '<iframe src="' . $embed->url . '" width="100%" height="100%" marginwidth="100%" marginheight="100%" style="box-sizing: border-box; max-width: 100%; border: 0px solid black; overflow: hidden;"></iframe>';
        }, $multiembed);
    
        $temp_dir = FCPATH . 'file/temp/';
        if (!file_exists($temp_dir)) {
            mkdir($temp_dir, 0777, true);
        }
        $files = glob($temp_dir . '*'); 
        if (count($files) > 5) { 
            foreach ($files as $file) {
                if (is_file($file))
                    unlink($file); 
            }
        }
        $temp_file = tempnam($temp_dir, 'iframe');
        file_put_contents($temp_file, view('anime/getepisode/player/jwplayer', [
            'getAdminSettings' => $modelsettings->getAdminSettings(),
            'play' => $play,
            'anime' => $anime,
            'episode' => $episode,
        ]));
        $temp_url = base_url().str_replace('\\', '/', str_replace(FCPATH, '', $temp_file));
    
        array_unshift($iframe_codes, '<iframe src="' . $temp_url . '" width="100%" height="100%" marginwidth="100%" marginheight="100%" style="box-sizing: border-box; max-width: 100%; border: 0px solid black; overflow: hidden;"></iframe>');
    
        return $this->response->setJSON($iframe_codes);
    }


    public function get_embed_gogoanime2($uid, $eps, $url)
    {
        $ch = curl_init($url . $eps);
        curl_setopt_array($ch, [
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_CONNECTTIMEOUT => 5,
            CURLOPT_USERAGENT => 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36',
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_SSL_VERIFYPEER => false,
        ]);
        $html = curl_exec($ch);
        curl_close($ch);

        libxml_use_internal_errors(true);
        $doc = new \DOMDocument();
        @$doc->loadHTML($html);
        libxml_clear_errors();

        $xpath = new \DOMXPath($doc);

        $datasrc = $xpath->query('//div[contains(@class, "anime_muti_link")]//a/@data-video');

        $width = "100%";
        $height = "100%";

        $embed_codes = [];

        foreach ($datasrc as $datasrcdoc) {
            $element = $doc->createElement('iframe');
            $element->setAttribute('src', $datasrcdoc->nodeValue);
            $element->setAttribute('width', $width);
            $element->setAttribute('height', $height);
            $element->setAttribute('marginwidth', $width);
            $element->setAttribute('marginheight', $height);
            $element->setAttribute('style', 'box-sizing: border-box; max-width: 100%; border: 0px solid black; overflow: hidden;');
            $embed_codes[] = $doc->saveHTML($element);
        }

        $json = json_encode($embed_codes);
        return $this->response->setJSON($json);
    }

    public function get_embed_playtaku($uid, $eps, $url)
    {

        $ch = curl_init($url . $eps);
        curl_setopt_array($ch, [
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_CONNECTTIMEOUT => 5,
            CURLOPT_USERAGENT => 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36',
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_SSL_VERIFYPEER => false,
        ]);

        $html = curl_exec($ch);
        curl_close($ch);

        libxml_use_internal_errors(true);
        $doc = new \DOMDocument();
        @$doc->loadHTML($html);
        libxml_clear_errors();

        $xpath = new \DOMXPath($doc);
        $width = "100%";
        $height = "100%";
        $embed_code = '';
        foreach ($xpath->query("/html/body/div[1]/section/div[1]/div[5]/div/div[1]/div[1]/div[1]/iframe") as $element) {
            $element->setAttribute('width', $width);
            $element->setAttribute('height', $height);
            $element->setAttribute('marginwidth', $width);
            $element->setAttribute('marginheight', $height);
            $embed_code = $doc->saveHTML($element);
        }
        $json = json_encode($embed_code);
        return $this->response->setJSON($json);
    }

    // $json = json_encode($embed_code);
    // return $this->respond(json_decode($json, true));
    // return $this->respond();

}
