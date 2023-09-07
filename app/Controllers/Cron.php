<?php

namespace App\Controllers;

use App\Models\AnimeModel;
use App\Models\EpisodeModel;

class Cron extends BaseController
{

    public function clearAnimeViewCount()
    {
        $animeModel = new AnimeModel();
        $animeModel->builder()->update(['view_count' => 0]);
        echo "Başarılı!";
    }
    public function clearAnimeViewCountMonth()
    {
        $animeModel = new AnimeModel();
        $animeModel->builder()->update(['view_count_month' => 0]);
        echo "Başarılı!";
    }

    public function clearAnimeViewCountYear()
    {
        $animeModel = new AnimeModel();
        $animeModel->builder()->update(['view_count_years' => 0]);
        echo "Başarılı!";
    }

    public function clearEpisodeViewCount()
    {
        $episodeModel = new EpisodeModel();
        $episodeModel->builder()->update(['ep_view' => 0]);
        echo "Başarılı!";
    }

    public function clearEpisodeViewCountMonth()
    {
        $episodeModel = new EpisodeModel();
        $episodeModel->builder()->update(['ep_view_month' => 0]);
        echo "Başarılı!";
    }

    public function clearEpisodeViewCountYear()
    {
        $episodeModel = new EpisodeModel();
        $episodeModel->builder()->update(['ep_view_years' => 0]);
        echo "Başarılı!";
    }
}
