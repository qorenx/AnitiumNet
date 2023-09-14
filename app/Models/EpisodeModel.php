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
        'ep_view',
        'ep_view_month',
        'ep_view_years',
        'created_at',
        'updated_at',
        'deleted_at'
    ];

    public function lastestepisode()
    {
        $typedefault = [1,2,3,4];
        if (auth()->user()) {  
            $typeraw = auth()->user()->raw_status ? 1 : 0;
            $typesub = auth()->user()->sub_status ? 2 : 0;
            $typedub = auth()->user()->dub_status ? 3 : 0;
            $typeturk = auth()->user()->turk_status ? 4 : 0;

            $types = array_filter([$typeraw, $typesub, $typedub, $typeturk]);  
        } else {
            $types = $typedefault;
        }
    
    
        $db = \Config\Database::connect();
        $query = $db
            ->table('episode')
            ->select('episode.uid, episode.ep_name, anime.ani_name,
            anime.ani_score, anime.ani_type, anime.ani_rate, anime.ani_poster,
            anime.ani_ep, episode.ep_id_name, anime.ani_time, episode_embed.embed_uid, GROUP_CONCAT(episode_embed.embed_type) as embed_types')
            ->join('anime', 'episode.uid = anime.uid', 'left')
            ->join('episode_embed',    'episode.uid = episode_embed.embed_uid AND episode.ep_id_name = episode_embed.embed_id', 'left')
            ->whereIn('episode_embed.embed_type', $types)
            ->groupBy('episode.uid, episode.ep_id_name')
            ->orderBy('episode.created_at', 'DESC')
            ->limit(54)
            ->get()
            ->getResultArray();
    
        foreach($query as $key => $episode){
            $embeds = explode(',', $episode['embed_types']);
    
            $query[$key]['RAW'] = in_array(1, $embeds) ? 1 : 0;
            $query[$key]['SUB'] = in_array(2, $embeds) ? 1 : 0;
            $query[$key]['DUB'] = in_array(3, $embeds) ? 1 : 0;
            $query[$key]['TURK'] = in_array(4, $embeds) ? 1 : 0;
        }
    
        $db->close();
        return $query;
    }


    public function todayepisode()
    {
        $db = \Config\Database::connect();
        $query = $db->table('episode')
            ->select('episode.uid, episode.ep_view, episode.ep_id_name, anime.ani_name,anime.ani_score, anime.ani_type, anime.ani_poster')
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
            ->select('episode.uid, episode.ep_view_month, episode.ep_id_name, anime.ani_name,anime.ani_score, anime.ani_type, anime.ani_poster')
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
            ->select('episode.uid, episode.ep_view_years, episode.ep_id_name, anime.ani_name,anime.ani_score, anime.ani_type, anime.ani_poster')
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

    public function episodedata($uid) {
        $defaultTypes = [1, 2, 3, 4];
        $user = auth()->user();
    
        $types = $user ? array_filter([
            $user->raw_status ? 1 : 0,
            $user->sub_status ? 2 : 0,
            $user->dub_status ? 3 : 0,
            $user->turk_status ? 4 : 0,
        ]) : $defaultTypes;
    
        $episodes = $this->db->table('episode')->where('uid', $uid)->orderBy('CAST(ep_id_name AS UNSIGNED)', 'desc')->get()->getResult();
        
        foreach ($episodes as $episode) {
            $embedData = $this->db->table('episode_embed')->where('embed_uid', $episode->uid)->where('embed_id', $episode->ep_id_name)->whereIn('embed_type', $types)->get()->getResult();
            
            if ($embedData) {
                $embedTypesAvailable = array_fill_keys($defaultTypes, 0);
                foreach ($embedData as $embed) {
                    $embedTypesAvailable[$embed->embed_type] = 1;
                }
                $episode->type = $embedTypesAvailable;
            }
        }
        return $episodes;
    }

    public function getEpisodeCount() {
        $query = $this->db->query('SELECT COUNT(*) as count FROM episode');
        $result = $query->getRow();
        return $result->count;
    }

    public function getTodayViewCount() {
        $query = $this->db->query('SELECT SUM(ep_view) as total FROM episode');
        $result = $query->getRow();
        return $result->total;
    }
    public function getMonthViewCount() {
        $query = $this->db->query('SELECT SUM(ep_view_month) as total FROM episode');
        $result = $query->getRow();
        return $result->total;
    }
    public function getYearsViewCount() {
        $query = $this->db->query('SELECT SUM(ep_view_years) as total FROM episode');
        $result = $query->getRow();
        return $result->total;
    }


}
