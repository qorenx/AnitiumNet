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
        'ep_name',
        'ep_jname',
        'created_at',
        'updated_at',
        'deleted_at'
    ];

    public function getTypeDetails()
    {
        $typedefault = [1, 2, 3, 4];
        if (auth()->user()) {
            $typeraw = auth()->user()->raw_status ? 1 : 0;
            $typesub = auth()->user()->sub_status ? 2 : 0;
            $typedub = auth()->user()->dub_status ? 3 : 0;
            $typeturk = auth()->user()->turk_status ? 4 : 0;

            $types = array_filter([$typeraw, $typesub, $typedub, $typeturk]);
        } else {
            $types = $typedefault;
        }

        if (empty($types)) {
            $types = [0];
        }
        return $types;
    }

    //Aşağıdaki Function Düzenlendi.
    public function get_LastEpisodeHome()
    {
        $types = $this->getTypeDetails();
        $query = $this
            ->select('episode.uid, episode.ep_name, anime.ani_name, anime.ani_type, anime.ani_rate, anime.ani_poster, anime.ani_ep, episode.ep_id_name, anime.ani_time, episode_embed.embed_uid, GROUP_CONCAT(episode_embed.embed_type) as embed_types')
            ->join('anime', 'episode.uid = anime.uid', 'left')
            ->join('episode_embed', 'episode.uid = episode_embed.embed_uid AND episode.ep_id_name = episode_embed.embed_id', 'left')
            ->whereIn('episode_embed.embed_type', $types)
            ->groupBy('episode.uid, episode.ep_id_name')
            ->orderBy('episode.created_at', 'DESC')
            ->limit(12)
            ->get()
            ->getResultArray();
    
        if (!empty($query)) {
            $data = ['RAW' => 1, 'SUB' => 2, 'DUB' => 3, 'TURK' => 4];
            $query = array_map(function ($episode) use ($data) {
                $embeds = array_flip(explode(',', $episode['embed_types']));
                foreach ($data as $type => $typeKey) {
                    $episode[$type] = array_key_exists($typeKey, $embeds) ? 1 : 0;
                }
                return $episode;
            }, $query);
        }
        $this->close();
        return $query ?? [];
    }

    public function get_RecentlyUpdated()
    {
        $types = $this->getTypeDetails();

        $query = $this
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

        if (!empty($query)) {
            $data = ['RAW' => 1, 'SUB' => 2, 'DUB' => 3, 'TURK' => 4];
            foreach ($query as $key => $episode) {
                $embeds = explode(',', $episode['embed_types']);
                $embeds = array_flip($embeds);

                foreach ($data as $type => $typeKey) {
                    $query[$key][$type] = array_key_exists($typeKey, $embeds) ? 1 : 0;
                }
            }
        }

        $this->close();
        return $query ?? [];
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

    public function episodedata2($uid, $ep_id_name) //Disable Kapalıdır. Çalışmıyr.
    {
        $types = $this->getTypeDetails();
    
        $allEpisodesData = $this
            ->select('uid, ep_id_name, ep_name')
            ->where('uid', $uid)
            ->orderBy('CAST(ep_id_name AS UNSIGNED)', 'asc')
            ->get()
            ->getResult();
    
        $filteredEpisodes = [];

        foreach ($allEpisodesData as $episode) {
            $embedData = $this->db
            ->table('episode_embed')
            ->where('embed_uid', $episode->uid)
            ->where('embed_id', $episode->ep_id_name)
            ->whereIn('embed_type', $types)
            ->get()
            ->getResult();
    
            if ($embedData) {
                $embedTypesAvailable = array_fill_keys($types, 0);
                foreach ($embedData as $embed) {
                    $embedTypesAvailable[$embed->embed_type] = 1;
                }
                $episode->type = $embedTypesAvailable;
                $filteredEpisodes[] = $episode;
            }
        }
    
        $conEpisodesData = $filteredEpisodes;
        $episodeIndex = array_search($ep_id_name, array_column($conEpisodesData, 'ep_id_name'));
        $episodeIndex = $episodeIndex !== false ? $episodeIndex : 0;
        if ($episodeIndex !== false) {
            $previousEpisode = $episodeIndex > 0 ? $conEpisodesData[$episodeIndex - 1] : null;
            $currentEpisode = $conEpisodesData[$episodeIndex];
            $nextEpisode = $episodeIndex < count($conEpisodesData) - 1 ? $conEpisodesData[$episodeIndex + 1] : null;
        }
     
        return array(
            "Current" => $currentEpisode,
            "Previous" => $previousEpisode,
            "Next" => $nextEpisode,
            "Episode" => $filteredEpisodes
        );
    }
    //Aşağıdaki Function Düzenlendi.
    public function get_EpisodePrevandNext($Uid, $EpİD)
    {
        $types = $this->getTypeDetails();
        
        $episodeIndex = $this
            ->select('uid, ep_id_name, ep_name, ep_jname')
            ->where('uid', $Uid)
            ->orderBy('CAST(ep_id_name AS UNSIGNED)', 'asc')
            ->get()
            ->getResult();
    
        $episodeIndexFinder = array_search($EpİD, array_column($episodeIndex, 'ep_id_name'));
    
        $episode_keys = [$episodeIndexFinder - 1, $episodeIndexFinder, $episodeIndexFinder + 1];
        $filteredEpisodes = [];
    
        foreach ($episode_keys as $key) {
            if (isset($episodeIndex[$key])) {
                $episode = $episodeIndex[$key];
                $embedData = $this->db
                ->table('episode_embed')
                ->where('embed_uid', $episode->uid)
                ->where('embed_id', $episode->ep_id_name)
                ->whereIn('embed_type', $types)
                ->get()
                ->getResult();
    
                if ($embedData) {
                    $embedTypesAvailable = array_fill_keys($types, 0);
                    foreach ($embedData as $embed) {
                        $embedTypesAvailable[$embed->embed_type] = 1;
                    }
                    $episode->type = $embedTypesAvailable;
                    $filteredEpisodes[$key] = $episode;
                }
            }
        }
    
        $previousEpisode = isset($filteredEpisodes[$episodeIndexFinder - 1]) ? $filteredEpisodes[$episodeIndexFinder - 1] : null;
        $currentEpisode = isset($filteredEpisodes[$episodeIndexFinder]) ? $filteredEpisodes[$episodeIndexFinder] : null;
        $nextEpisode = isset($filteredEpisodes[$episodeIndexFinder + 1]) ? $filteredEpisodes[$episodeIndexFinder + 1] : null;
    
        return array(
            "Previous" => $previousEpisode,
            "Current" => $currentEpisode,
            "Next" => $nextEpisode,
        );
    }


    public function get_EpisodeList($Uid)
    {
        $types = $this->getTypeDetails();
    
        $allEpisodesData = $this
            ->select('uid, ep_id_name, ep_name, ep_jname')
            ->where('uid', $Uid)
            ->orderBy('CAST(ep_id_name AS UNSIGNED)', 'asc')
            ->get()
            ->getResult();
    
        $filteredEpisodes = [];

        foreach ($allEpisodesData as $episode) {
            $embedData = $this->db
            ->table('episode_embed')
            ->where('embed_uid', $episode->uid)
            ->where('embed_id', $episode->ep_id_name)
            ->whereIn('embed_type', $types)
            ->get()
            ->getResult();
    
            if ($embedData) {
                $embedTypesAvailable = array_fill_keys($types, 0);
                foreach ($embedData as $embed) {
                    $embedTypesAvailable[$embed->embed_type] = 1;
                }
                $episode->type = $embedTypesAvailable;
                $filteredEpisodes[] = $episode;
            }
        }

        return $filteredEpisodes;
    }
    


    public function get_EpisodeFirstData($uid)
    {
        $defaultTypes = [1, 2, 3, 4];
        $user = auth()->user();

        $types = $user ? array_filter([
            $user->raw_status ? 1 : 0,
            $user->sub_status ? 2 : 0,
            $user->dub_status ? 3 : 0,
            $user->turk_status ? 4 : 0,
        ]) : $defaultTypes;

        $episodes = $this->db->table('episode')->where('uid', $uid)->orderBy('CAST(ep_id_name AS UNSIGNED)', 'asc')->get()->getResult();

        $filteredEpisodes = [];
        foreach ($episodes as $episode) {
            $embedData = $this->db->table('episode_embed')->where('embed_uid', $episode->uid)->where('embed_id', $episode->ep_id_name)->whereIn('embed_type', $types)->get()->getResult();

            if ($embedData) {
                $embedTypesAvailable = array_fill_keys($defaultTypes, 0);
                foreach ($embedData as $embed) {
                    $embedTypesAvailable[$embed->embed_type] = 1;
                }
                $episode->type = $embedTypesAvailable;
                $filteredEpisodes[] = $episode;
                break;
            }
        }
        return isset($filteredEpisodes[0]) ? $filteredEpisodes[0]->ep_id_name : 0;
    }


    public function getEpisodeCount()
    {
        $query = $this->query('SELECT COUNT(*) as count FROM episode');
        $result = $query->getRow();
        return $result->count;
    }

}
