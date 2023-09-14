<?php

namespace App\Controllers;

use App\Models\{
    EpisodeEmbedModel,
    AnimeModel
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
            'gogoanime.hu'              => 'get_embed_gogoanime'
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

        $json = json_encode($embed_code);

        return $this->response->setJSON($json);
    }

    public function get_embed_dailymotion($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe frameborder="0" width="100%" height="100%" src="//www.dailymotion.com/embed/video/' . $video_id . '" allowfullscreen></iframe>';

        $json = json_encode($embed_code);

        return $this->response->setJSON($json);
    }

    public function get_embed_vimeo($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe src="https://player.vimeo.com/video/' . $video_id . '" width="100%" height="100%" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>';

        $json = json_encode($embed_code);

        return $this->response->setJSON($json);
    }

    public function get_embed_doodstream($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe frameborder="0" width="100%" height="100%" src="https://doodstream.com/embed/' . $video_id . '" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>';

        $json = json_encode($embed_code);

        return $this->response->setJSON($json);
    }

    public function get_embed_awish($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe frameborder="0" width="100%" height="100%" src="https://awish.pro/e/' . $video_id . '" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>';

        $json = json_encode($embed_code);

        return $this->response->setJSON($json);
    }

    public function get_embed_sbani($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe frameborder="0" width="100%" height="100%" src="https://sbani.pro/e/' . $video_id . '" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>';

        $json = json_encode($embed_code);

        return $this->response->setJSON($json);
    }

    public function get_embed_doodwf($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe frameborder="0" width="100%" height="100%" src="https://dood.wf/e/' . $video_id . '" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>';

        $json = json_encode($embed_code);

        return $this->response->setJSON($json);
    }

    public function get_embed_sbone($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe frameborder="0" width="100%" height="100%" src="https://sbone.pro/e/' . $video_id . '" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>';

        $json = json_encode($embed_code);

        return $this->response->setJSON($json);
    }

    public function get_embed_mp4upload($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe frameborder="0" width="100%" height="100%" src="https://www.mp4upload.com/' . $video_id . '" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>';

        $json = json_encode($embed_code);

        return $this->response->setJSON($json);
    }

    public function get_embed_animein($uid, $eps, $url)
    {

        $embed_code = '<iframe width="100%" height="100%" src="https://animein.fun/player2/v9.php/?uid=' . $uid . '&eps=' . $eps . '" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>';
        $json = json_encode($embed_code);
        return $this->response->setJSON($json);
    }

    public function get_embed_oneupload($uid, $eps, $url)
    {
        $path_components = explode('/', parse_url($url, PHP_URL_PATH));
        $video_id = end($path_components);
        $embed_code = '<iframe frameborder="0" width="100%" height="100%" src="https://oneupload.to/embed-' . $video_id . '.html" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>';

        $json = json_encode($embed_code);

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
        foreach ($xpath->query("/html/body/div[2]/div/div/section/section[1]/div[1]/div[2]/div[3]/div/div/div/iframe") as $element) {
            $element->setAttribute('width', $width);
            $element->setAttribute('height', $height);
            $element->setAttribute('marginwidth', $width);
            $element->setAttribute('marginheight', $height);
            $embed_code = $doc->saveHTML($element);
        }
        $json = json_encode($embed_code);
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
