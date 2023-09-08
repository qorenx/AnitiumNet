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
        'sliderwallpaper',
    ];

    public function getSlider()
    {
        $builder = $this->db->table('anime_slider');
        $results = $builder
            ->select('anime_slider.sliderwallpaper, anime.uid, anime.ani_name, anime.ani_jname, anime.ani_type, anime.ani_quality, anime.ani_synopsis, anime.ani_time, anime.ani_aired')
            ->join('anime', 'anime.uid = anime_slider.slideruid')
            ->orderBy('RAND()')
            ->get()
            ->getResultArray();
    
        $typedefault = [1, 2, 3, 4];
        $types = $typedefault;
        $toBeCheckedTypes = ['RAW', 'SUB', 'DUB', 'TURK'];
        $foundTypes = [];
    
        foreach($results as &$anime) {
            foreach ($types as $type) {
                $query = $this->db
                    ->table('anime')
                    ->select('GROUP_CONCAT(episode_embed.embed_type) as embed_types')
                    ->where('anime.uid', $anime['uid'])
                    ->join('episode_embed', 'anime.uid = episode_embed.embed_uid', 'left')
                    ->get()
                    ->getResultArray();
    
                if (!empty($query[0])) {
                    if (strpos($query[0]['embed_types'], (string)$type) !== false) {
                        $foundTypes[$toBeCheckedTypes[$type - 1]] = 1;
                    } else {
                        $foundTypes[$toBeCheckedTypes[$type - 1]] = 0;
                    }
                }
    
                $anime = array_merge($anime, ['type' => $foundTypes]);
            }
        }
        
        return $results;
    }
}
