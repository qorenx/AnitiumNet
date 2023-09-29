<?php

namespace App\Models;

use CodeIgniter\Model;

class EpisodeViews extends Model
{
    protected $table = 'episode_views';
    protected $primaryKey = 'id';

    protected $useTimestamps = true;
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';

    protected $allowedFields = [
        'id',
        'ep_uid',
        'ep_id',
        'ep_today',
        'ep_weeky',
        'ep_month',
        'created_at',
        'updated_at',
        'deleted_at'
    ];


    public function episodeviewsupdate($uid, $ep_id_name)
    {
        $episode = $this
            ->where(['ep_uid' => $uid, 'ep_id' => $ep_id_name])
            ->first();

        if (is_null($episode)) {
            return $this
                ->insert([
                    'ep_uid' => $uid,
                    'ep_id' => $ep_id_name,
                    'ep_today' => 1,
                    'ep_weeky' => 1,
                    'ep_month' => 1
                ]);
        } else {
            return $this
                ->where(['ep_uid' => $uid, 'ep_id' => $ep_id_name])
                ->set('ep_today', 'ep_today+1', FALSE)
                ->set('ep_weeky', 'ep_weeky+1', FALSE)
                ->set('ep_month', 'ep_month+1', FALSE)
                ->update();
        }
    }

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

    public function getDbConnection()
    {
        return \Config\Database::connect();
    }

    //Aşağıdaki Function Düzenlendi.
    public function get_EpisodeViewSideBar()
    {
        $types = $this->getTypeDetails();
        $db = $this->getDbConnection();

        $date = date('Y-m-d', strtotime('-2 days'));
        $today = $db->table('episode_views')
            ->select("episode_views.ep_uid, episode_views.ep_today, episode_views.ep_id, anime.ani_name, anime.ani_score, anime.ani_type, anime.ani_poster")
            ->join('anime', 'episode_views.ep_uid = anime.uid', 'left')
            ->join('episode_embed', 'episode_views.ep_uid = episode_embed.embed_uid AND episode_views.ep_id = episode_embed.embed_id', 'left')
            ->where('episode_views.created_at >=', $date)
            ->whereIn('episode_embed.embed_type', $types)
            ->orderBy("episode_views.ep_today", 'DESC')
            ->limit(10)
            ->get()
            ->getResultArray();

        $date_a_week_ago = date('Y-m-d', strtotime('-2 week'));
        $weeky = $db->table('episode_views')
            ->select("episode_views.ep_uid, episode_views.ep_weeky, episode_views.ep_id, anime.ani_name, anime.ani_score, anime.ani_type, anime.ani_poster")
            ->join('anime', 'episode_views.ep_uid = anime.uid', 'left')
            ->join('episode_embed', 'episode_views.ep_uid = episode_embed.embed_uid AND episode_views.ep_id = episode_embed.embed_id', 'left')
            ->where('episode_views.created_at >=', $date_a_week_ago)
            ->whereIn('episode_embed.embed_type', $types)
            ->orderBy("episode_views.ep_weeky", 'DESC')
            ->limit(10)
            ->get()
            ->getResultArray();

        $date = date('Y-m-d', strtotime('-3 month'));
        $month = $db->table('episode_views')
            ->select("episode_views.ep_uid, episode_views.ep_month, episode_views.ep_id, anime.ani_name, anime.ani_score, anime.ani_type, anime.ani_poster")
            ->join('anime', 'episode_views.ep_uid = anime.uid', 'left')
            ->join('episode_embed', 'episode_views.ep_uid = episode_embed.embed_uid AND episode_views.ep_id = episode_embed.embed_id', 'left')
            ->where('episode_views.created_at >=', $date)
            ->whereIn('episode_embed.embed_type', $types)
            ->orderBy("episode_views.ep_month", 'DESC')
            ->limit(10)
            ->get()
            ->getResultArray();

        $db->close();

        return ['TodayData' => $today, 'WeekyData' => $weeky, 'MonthData' => $month];
    }


    public function getTodayViewCount()
    {
        $query = $this->query('SELECT SUM(ep_today) as total FROM episode_views');
        $result = $query->getRow();
        return $result->total;
    }
    public function getWeekyViewCount()
    {
        $query = $this->query('SELECT SUM(ep_weeky) as total FROM episode_views');
        $result = $query->getRow();
        return $result->total;
    }
    public function getMonthViewCount()
    {
        $query = $this->query('SELECT SUM(ep_month) as total FROM episode_views');
        $result = $query->getRow();
        return $result->total;
    }
}
