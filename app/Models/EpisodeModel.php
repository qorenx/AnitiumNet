<?php

namespace App\Models;

use CodeIgniter\Model;

class EpisodeModel extends Model
{
    protected $table = 'episode';
    protected $primaryKey = 'id';

    protected $useTimestamps = true;
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';

    protected $allowedFields = [
        'id',
        'uid',
        'ep_id_name',
        'ep_jname',
        'ep_romaji',
        'ep_aired',
        'ep_name',
        'ep_pv',
        'ep_view',
        'ep_view_month',
        'ep_view_years',
        'created_at',
        'updated_at',
        'deleted_at'
    ];

    public function lastestepisode()
    {
        $db = \Config\Database::connect();
        $query = $db
            ->table('episode')
            ->select('episode.uid, episode.ep_name, anime.ani_name, anime.ani_score, anime.ani_type, anime.ani_rate, anime.ani_poster, anime.ani_ep, episode.ep_id_name, anime.ani_time, anime.ani_raw, anime.ani_sub, anime.ani_dub, anime.ani_turk')
            ->join('anime', 'episode.uid = anime.uid', 'left')
            ->orderBy('episode.created_at', 'DESC')
            ->limit(54)
            ->get()
            ->getResultArray();
        $db->close();
        return $query;
    }


    public function todayepisode()
    {
        $db = \Config\Database::connect();
        $query = $db->table('episode')
            ->select('episode.uid, episode.ep_view, anime.ani_name,anime.ani_score, anime.ani_type, anime.ani_poster')
            ->join('anime', 'episode.uid = anime.uid', 'left')
            ->orderBy('episode.ep_view', 'DESC')
            ->limit(10)
            ->get()
            ->getResultArray();
        $db->close();
        return $query;
    }

    public function weekepisode()
    {
        $db = \Config\Database::connect();
        $query = $db->table('episode')
            ->select('episode.uid, episode.ep_view_month, anime.ani_name,anime.ani_score, anime.ani_type, anime.ani_poster')
            ->join('anime', 'episode.uid = anime.uid', 'left')
            ->orderBy('episode.ep_view_month', 'DESC')
            ->limit(10)
            ->get()
            ->getResultArray();
        $db->close();
        return $query;
    }

    public function yearsepisode()
    {
        $db = \Config\Database::connect();
        $query = $db->table('episode')
            ->select('episode.uid, episode.ep_view_years, anime.ani_name,anime.ani_score, anime.ani_type, anime.ani_poster')
            ->join('anime', 'episode.uid = anime.uid', 'left')
            ->orderBy('episode.ep_view_years', 'DESC')
            ->limit(10)
            ->get()
            ->getResultArray();
        $db->close();
        return $query;
    }

    public function updateEpisode($uid, $data, $epuid)
    {
        $builder = $this->db->table('episode');
        $builder->where('uid', $uid);
        $builder->where('ep_id_name', $epuid);
        $builder->set($data);
        $builder->update();
    }

    public function deleteEpisode($uid, $epuid)
    {
        $builder = $this->db->table('episode');
        $builder->where('uid', $uid)->where('id', $epuid)->delete();
    }

    

    public function episodeviewupdate($uid, $ep_id_name)
    {
        return $this->db
            ->table('episode')
            ->where(['uid' => $uid, 'ep_id_name' => $ep_id_name])
            ->set('ep_view', 'ep_view+1', FALSE)
            ->set('ep_view_month', 'ep_view_month+1', FALSE)
            ->set('ep_view_years', 'ep_view_years+1', FALSE)
            ->update();
    }

    public function episodedata($uid)
    {
        return $this->db
            ->table('episode')
            ->where('uid', $uid)
            ->orderBy('CAST(ep_id_name AS UNSIGNED)')
            ->get()
            ->getResult();
    }
}
