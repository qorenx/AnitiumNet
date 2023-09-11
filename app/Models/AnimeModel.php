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
        'sid',
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
        'ani_release',
        'ani_release_season',
        'ani_rate',
        'ani_score',
        'ani_quality',
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
        'view_count',
        'view_count_month',
        'view_count_years'
    ];

    public function getAnimeByUid($uid)
    {
        return $this->db
            ->table('anime')
            ->select('anime.*')
            ->where('anime.uid', $uid)
            ->get()
            ->getRowArray();
    }


    public function getEpisodeAndEmbedData($uid)
    {
        $db = \Config\Database::connect();
        $episodeCountQuery = $db->table('episode')
            ->where('uid', $uid)
            ->countAllResults();
        $embedDataQuery = $db->table('episode_embed')
            ->where('embed_uid', $uid)
            ->get()
            ->getResultArray();
        $embedTypeCounts = ['1' => 0, '2' => 0, '3' => 0, '4' => 0];
        foreach ($embedDataQuery as $data) {
            $embedTypeCounts[$data['embed_type']]++;
        }

        $db->close();

        return [
            'episode_count' => $episodeCountQuery,
            'embed_type_counts' => $embedTypeCounts
        ];
    }


    public function search($data)
    {
        $query = $this->db->table('anime');

        if (empty($data['type'])) {
            $query->whereIn('ani_type', [1, 2, 3, 4, 5]);
        } else {
            $query->where('ani_type', $data['type']);
        }
        if (isset($data['country']) && $data['country'] != '') {
            $query->where('ani_country', $data['country']);
        } else {
            $query->whereIn('ani_country', [1, 2]);
        }
        if (isset($data['stats']) && !empty($data['stats'])) {
            $query->where('ani_stats', $data['stats']);
        } else {
            $query->whereIn('ani_stats', [1, 2, 3]);
        }
        if (empty($data['rate'])) {
            $query->whereIn('ani_rate', [1, 2, 3, 4, 5]);
        } else {
            $query->where('ani_rate', $data['rate']);
        }
        if (empty($data['source'])) {
            $query->whereIn('ani_source', [1, 2, 3]);
        } else {
            $query->where('ani_source', $data['source']);
        }
        if (empty($data['season'])) {
            $query->whereIn('ani_release_season', [1, 2, 3, 4]);
        } else {
            $query->where('ani_release_season', $data['season']);
        }


        if (isset($data['language'])) {
            switch ($data['language']) {
                case 1:
                    $query->where('ani_raw', 1);
                    break;
                case 2:
                    $query->where('ani_sub', 1);
                    break;
                case 3:
                    $query->where('ani_dub', 1);
                    break;
                case 4:
                    $query->where('ani_turk', 1);
                    break;
            }
        }

        if (isset($data['aired'])) {
            if (strlen($data['aired']) === 4) {
                $data['aired'] = $data['aired'] . '%';
            } elseif (strlen($data['aired']) >= 8) {
                $data['aired'] = substr($data['aired'], 0, 4) . '-' . substr($data['aired'], 4, 2) . '-' . substr($data['aired'], 6, 2) . '%';
            } else {
                $data['aired'] = null;
            }
            if ($data['aired'] !== null) {
                $query->where('ani_aired LIKE', $data['aired']);
            }
        }

        if (isset($data['genres'])) {
            $genreArray = explode(",", $data['genres']);
            $whereCondition = "";
            foreach ($genreArray as $k => $genre) {
                if ($k !== 0) {
                    $whereCondition .= " AND ";
                }
                $whereCondition .= "ani_genre LIKE '%" . $genre . "%'";
            }
            $query->where($whereCondition);
        }

        if (isset($data['sort'])) {
            switch ($data['sort']) {
                case 'recently_added':
                    $query->orderBy('created_at', 'desc');
                    break;
                case 'recently_updated':
                    $query->orderBy('updated_at', 'desc');
                    break;
                case 'score':
                    $query->orderBy('ani_score', 'desc');
                    break;
                case 'name_az':
                    $query->orderBy('ani_name', 'asc');
                    break;
                case 'released_date':
                    $query->orderBy('ani_release', 'desc');
                    break;
                case 'most_watched':
                    $query->orderBy('view_count_years', 'desc');
                    break;
                default:
                    break;
            }
        }

        $result = $query->get()->getResultArray();

        return $result;
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
            ->select('uid, ani_poster, ani_name, ani_type, ani_ep, ani_rate, ani_aired')
            ->where('ani_stats', '3')
            ->orderBy('RAND()')
            ->limit(12)
            ->get()
            ->getResultArray();
    }

    public function anirecommended()
    {
        $query = $this->db->table('anime')
            ->whereIn('ani_stats', [1, 2])
            ->select('uid, ani_poster, ani_name, ani_type, ani_ep, ani_rate, ani_aired')
            ->orderBy('RAND()')
            ->limit(24);
        return $query->get()->getResultArray();
    }


    public function topanime()
    {
        $builder = $this->db->table('anime');
        $builder->whereIn('ani_stats', [1, 2])->select('view_count, uid, ani_name, ani_score, ani_type, ani_poster')
            ->orderBy('view_count', 'DESC')
            ->limit(10);
        $result = $builder->get()->getResultArray();
        return $result;
    }

    public function topmonthanime()
    {
        $builder = $this->db->table('anime');
        $builder->whereIn('ani_stats', [1, 2])->select('view_count_month, uid, ani_name, ani_score, ani_type, ani_poster')
            ->orderBy('view_count_month', 'DESC')
            ->limit(10);
        $result = $builder->get()->getResultArray();
        return $result;
    }


    public function topyearsanime()
    {
        $builder = $this->db->table('anime');
        $builder->whereIn('ani_stats', [1, 2])->select('view_count_years, uid, ani_name, ani_score, ani_type, ani_poster')
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

    public function getAnimeCount()
    {
        $query = $this->db->query('SELECT COUNT(*) as count FROM anime');
        $result = $query->getRow();
        return $result->count;
    }

    public function getTodayViewCount()
    {
        $query = $this->db->query('SELECT SUM(view_count) as total FROM anime');
        $result = $query->getRow();
        return $result->total;
    }
    public function getMonthViewCount()
    {
        $query = $this->db->query('SELECT SUM(view_count_month) as total FROM anime');
        $result = $query->getRow();
        return $result->total;
    }
    public function getYearsViewCount()
    {
        $query = $this->db->query('SELECT SUM(view_count_years) as total FROM anime');
        $result = $query->getRow();
        return $result->total;
    }


    public function getSuggestions($keyword)
    {
        return $this->like('ani_name', $keyword)
            ->orLike('uid', $keyword)
            ->findAll();
    }


    public function getqtip($uid)
    {
        $result = $this->where('uid', $uid)
            ->get()
            ->getResultArray();
        return $result[0];
    }


    public function animeseason($uid, $sid)
    {
        $result = $this
            ->select('uid, ani_name, ani_poster, ani_aired')
            ->where('sid', $sid)
            ->orderBy('ani_aired', 'ASC')
            ->get()
            ->getResultArray();

        foreach ($result as &$value) {
            if ($value['uid'] == $uid) {
                $value['active'] = 1;
            }
        }
        return $result;
    }
    public function genreget($genre)
    {
        return $this->like('ani_genre', $genre);
    }
    public function studioget($studio)
    {
        return $this->like('ani_studio', $studio);
    }
    public function producersget($producers)
    {
        return $this->like('ani_producers', $producers);
    }
}
