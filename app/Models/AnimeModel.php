<?php

namespace App\Models;

use CodeIgniter\Model;

class AnimeModel extends Model
{
    protected $table = 'anime';
    protected $primaryKey = 'id';

    protected $useTimestamps = true;
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';

    protected $allowedFields = [
        'id',
        'uid',
        'ani_name',
        'ani_jname',
        'ani_synonyms',
        'ani_genre',
        'ani_type',
        'ani_country',
        'ani_stats',
        'ani_source',
        'ani_ep',
        'ani_synopsis',
        'ani_poster',
        'ani_wallpaper',
        'ani_release',
        'ani_release_season',
        'ani_rate',
        'ani_score',
        'view_count',
        'ani_raw',
        'ani_sub',
        'ani_dub',
        'ani_turk',
        'ani_pv',
        'ani_release',
        'ani_release_season',
        'ani_aired',
        'ani_aired_fin',
        'ani_time',
        'ani_studio',
        'ani_producers',
        'ani_manga_url',
        'ani_offical_site',
        'view_count_month',
        'view_count_years'

    ];

    protected $validationRules = [
        'uid' => 'required|numeric',
        'ani_name' => 'required',
        'ani_jname' => 'required',
        'ani_synonyms' => 'required',
        'ani_genre' => 'required',
        'ani_poster' => 'required|in:png,jpeg',
        'ani_wallpaper' => 'in:png,jpeg',
        'ani_score' => 'required',
        'ani_pv' => 'required',
        'ani_time' => 'required',
        'ani_studio' => 'required',
        'ani_producers' => 'required',
    ];
    
    protected $validationMessages = [
        'uid.required' => 'User id is required.',
        'uid.numeric' => 'User id should be numeric.',
        'ani_name.required' => 'Anime name is required.',
        'ani_jname.required' => 'Anime japanese name is required.',
        'ani_synonyms.required' => 'Anime synonyms are required.',
        'ani_genre.required' => 'Anime genre is required.',
        'ani_poster.required' => 'Anime poster is required.',
        'ani_poster.in' => 'Poster should be in PNG or JPEG format only.',
        'ani_wallpaper.in' => 'Wallpaper should be in PNG or JPEG format only.',
        'ani_score.required' => 'Anime score is required.',
        'ani_score.numeric' => 'Anime score should be numeric.',
        'ani_pv.required' => 'Anime page views are required.',
        'ani_time.required' => 'Anime time is required.',
        'ani_studio.required' => 'Anime studio is required.',
        'ani_producers.required' => 'Anime producers are required.',
    ];

    public function getAnimeByUid($uid)
    {
        return $this->where('uid', $uid)->first();
    }

    public function search($ani_type = null, $ani_country = null, $ani_stats = null, $ani_rate = null, $ani_source = null, $ani_release_season = null, $ani_release = null)
    {
        $query = $this->db->table('anime');

        if ($ani_type !== null && $ani_type !== '') $query->where('ani_type', $ani_type);
        if ($ani_country !== null && $ani_country !== '') $query->where('ani_country', $ani_country);
        if ($ani_stats !== null) $query->where('ani_stats', $ani_stats);
        if ($ani_rate !== null) $query->where('ani_rate', $ani_rate);
        if ($ani_source !== null) $query->where('ani_source', $ani_source);
        if ($ani_release_season !== null) $query->where('ani_release_season', $ani_release_season);
        if ($ani_release !== null) $query->where('ani_release', $ani_release);

        $results = $query->get()->getResultArray();
        return $results;
    }

    public function getTrending()
    {
        $current_year = date("Y");
        return $this->db
            ->table('anime')
            ->select(['uid', 'ani_poster', 'ani_name'])
            ->where('ani_release', $current_year)
            ->where('ani_stats', 1)
            ->orderBy('RAND()')
            ->limit(8)
            ->get()
            ->getResultArray();
    }

    public function gettopupComing()
    {
        return $this->db
            ->table('anime')
            ->select('uid, ani_poster, ani_name, ani_type, ani_ep, ani_release, ani_release_season, ani_rate, ani_score')
            ->where('ani_stats', '3')
            ->orderBy('RAND()')
            ->limit(12)
            ->get()
            ->getResultArray();
    }

    public function anirecommended()
    {
        $query = $this->db->table('anime')
            ->select('uid, ani_name, ani_ep, ani_type, ani_poster, ani_release, ani_release_season')
            ->orderBy('RAND()')
            ->limit(24);
        return $query->get()->getResultArray();
    }


    public function topanime()
    {
        $builder = $this->db->table('anime');
        $builder->select('view_count, uid, ani_name, ani_score, ani_type, ani_poster')
            ->orderBy('view_count', 'DESC')
            ->limit(10);
        $result = $builder->get()->getResultArray();
        return $result;
    }

    public function topmonthanime()
    {
        $builder = $this->db->table('anime');
        $builder->select('view_count_month, uid, ani_name, ani_score, ani_type, ani_poster')
            ->orderBy('view_count_month', 'DESC')
            ->limit(10);
        $result = $builder->get()->getResultArray();
        return $result;
    }


    public function topyearsanime()
    {
        $builder = $this->db->table('anime');
        $builder->select('view_count_years, uid, ani_name, ani_score, ani_type, ani_poster')
            ->orderBy('view_count_years', 'DESC')
            ->limit(10);
        $result = $builder->get()->getResultArray();
        return $result;
    }


    public function updateAnime($uid, $data)
    {
        $builder = $this->db->table('anime');
        $builder->where('uid', $uid);
        $builder->update($data);
    }

    public function animeviewupdate($aniuid)
    {
        return $this->db
            ->table('anime')
            ->where('uid', $aniuid)
            ->set('view_count', 'view_count + 1', false)
            ->set('view_count_month', 'view_count_month + 1', false)
            ->set('view_count_years', 'view_count_years + 1', false)
            ->update();
    }
}
