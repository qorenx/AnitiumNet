<?php

namespace App\Models;

use CodeIgniter\Model;

class AnimeSlider extends Model
{
    protected $table = 'anime_slider';
    protected $primaryKey = 'id';

    protected $allowedFields = [
        'id',
        'slideruid',
    ];

    public function getSlider()
    {
        $builder = $this->db->table('anime_slider');
        $results = $builder
            ->select('anime.uid, anime.ani_name, anime.ani_jname, anime.ani_type, anime.ani_wallpaper, anime.ani_synopsis, anime.ani_time, anime.ani_aired, anime.ani_raw, anime.ani_sub, anime.ani_dub, anime.ani_turk')
            ->join('anime', 'anime.uid = anime_slider.slideruid')
            ->orderBy('RAND()')
            ->get()
            ->getResultArray();
        return $results;
    }
}
