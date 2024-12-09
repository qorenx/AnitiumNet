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
        'external',
        'relations',
        'view_count',
        'view_count_month',
        'view_count_years'
    ];

    //Aşağıdaki function düzenlendi.
    public function get_AnimeData($uid)
    {
        $result = $this
            ->table('anime')
            ->select('anime.*')
            ->where('uid', $uid)
            ->get()
            ->getRowArray();

        $foundMalId = false;
        $restricted_ids = array(21); // (21,24,332 etc...)Animes with a lot of side stories, such as One Piece, are written here. It may be prevented from being displayed.

        $relations = isset($result['relations']) ? json_decode($result['relations'], true) : [];

        if (isset($relations['Sequel'])) {
            $foundMalId = true;
        }

        if (isset($relations['Prequel'])) {
            $foundMalId = true;
        }

        if (isset($relations['Side story']) && !in_array($uid, $restricted_ids)) {
            $foundMalId = true;
        }

        if (isset($relations['Parent story']) && !in_array($uid, $restricted_ids)) {
            $foundMalId = true;
        }
        $result['mal_season'] = $foundMalId ? 1 : 0;

        return $result;
    }

    //Aşağıdaki function düzenlendi.
public function get_EpisodeAndEmbedData($uid)
{
    $db = \Config\Database::connect();

    // Count the total number of episodes available for the given UID
    $episodeCountQuery = $db->table('episode')
        ->where('uid', $uid)
        ->countAllResults();

    // Query to get all embed data related to the given UID and join with episode table
    $embedDataQuery = $db->table('episode_embed')
        ->select('episode_embed.embed_type, episode.ep_id_name as episode_id') // Select the embed type and episode id
        ->join('episode', 'episode.uid = episode_embed.embed_uid AND episode.ep_id_name = episode_embed.embed_id') // Join based on the MAL ID and episode number
        ->where('episode.uid', $uid)
        ->get()
        ->getResultArray();

    // Initialize arrays to keep track of unique episodes that have at least one embed for each type
    $embedTypeEpisodes = ['1' => [], '2' => [], '3' => [], '4' => []];

    // Iterate over each embed and collect unique episode IDs for each type
    foreach ($embedDataQuery as $data) {
        $embedType = $data['embed_type'];
        $episodeId = $data['episode_id']; // Get the episode identifier from the joined data

        // Add unique episodes to the list for each embed type
        if (!in_array($episodeId, $embedTypeEpisodes[$embedType])) {
            $embedTypeEpisodes[$embedType][] = $episodeId;
        }
    }

    // Convert the arrays of unique episode numbers into counts
    $embedTypeCounts = [];
    foreach ($embedTypeEpisodes as $type => $episodes) {
        $embedTypeCounts[$type] = count($episodes);
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

    //Aşağıdaki Function Düzenlendi.
    public function get_AnimeUpComing()
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

    //Aşağıdaki Function Düzenlendi.
    public function AnimeRecommended()
    {
        $query = $this
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
            ->orLike('ani_synonyms', $keyword)
            ->findAll();
    }


    public function getqtip($uid)
    {
        $result = $this->where('uid', $uid)
            ->get()
            ->getResultArray();
        return $result[0];
    }

    //Aşağıdaki Function Düzenlendi.
    public function AnimeSeasonReleated($uid)
    {
        $related = $this->fetchAnimeSeasonRelated([$uid], [], true);
        usort($related, function ($a, $b) {
            return strcmp($a['ani_aired'], $b['ani_aired']);
        });
        return $related;
    }

    private function fetchAnimeSeasonRelated($mal_ids, $already_fetched_mal_ids = [], $is_initial_call = false)
    {
        $related = $this
            ->select('uid, ani_name, ani_poster, relations, IF(ani_aired IS NULL or ani_aired = "", "9999-12-31", ani_aired) as ani_aired')
            ->whereIn('uid', $mal_ids)
            ->get()
            ->getResultArray();

        foreach ($related as $key => $related_anime) {
            if ($is_initial_call) {
                $related[$key]['active'] = 1;
            } else {
                unset($related[$key]['active']);
            }
        }

        $new_mal_ids = [];
        foreach ($related as &$rel) {
            $relations = json_decode($rel['relations'], true);
            if ($relations) {
                if (isset($relations['Sequel'])) {
                    foreach ($relations['Sequel'] as $sequel) {
                        if (!in_array($sequel['mal_id'], $mal_ids) && !in_array($sequel['mal_id'], $already_fetched_mal_ids)) {
                            $new_mal_ids[] = $sequel['mal_id'];
                            $already_fetched_mal_ids[] = $sequel['mal_id'];
                        }
                    }
                }
                if (isset($relations['Prequel'])) {
                    foreach ($relations['Prequel'] as $prequel) {
                        if (!in_array($prequel['mal_id'], $mal_ids) && !in_array($prequel['mal_id'], $already_fetched_mal_ids)) {
                            $new_mal_ids[] = $prequel['mal_id'];
                            $already_fetched_mal_ids[] = $prequel['mal_id'];
                        }
                    }
                }
                if (isset($relations['Side story'])) {
                    foreach ($relations['Side story'] as $sidestory) {
                        if (!in_array($sidestory['mal_id'], $mal_ids) && !in_array($sidestory['mal_id'], $already_fetched_mal_ids)) {
                            $new_mal_ids[] = $sidestory['mal_id'];
                            $already_fetched_mal_ids[] = $sidestory['mal_id'];
                        }
                    }
                }
                if (isset($relations['Parent story'])) {
                    foreach ($relations['Parent story'] as $parentstory) {
                        if (!in_array($parentstory['mal_id'], $mal_ids) && !in_array($parentstory['mal_id'], $already_fetched_mal_ids)) {
                            $new_mal_ids[] = $parentstory['mal_id'];
                            $already_fetched_mal_ids[] = $parentstory['mal_id'];
                        }
                    }
                }
            }
        }
        if (!empty($new_mal_ids)) {
            $related = array_merge($related, $this->fetchAnimeSeasonRelated($new_mal_ids, $already_fetched_mal_ids));
        }

        $related = array_reduce($related, function ($carry, $item) {
            if (!isset($carry[$item['uid']])) {
                $carry[$item['uid']] = $item;
            }

            return $carry;
        }, []);

        return $related;
    }

    //Aşağıdakifunction düzenlendi.
    public function get_Genre($Genre)
    {
        return $this->like('ani_genre', $Genre);
    }
    //Aşağıdakifunction düzenlendi.
    public function get_Studio($Studio)
    {
        return $this->like('ani_studio', $Studio);
    }
    //Aşağıdakifunction düzenlendi.
    public function get_Producers($Producers)
    {
        return $this->like('ani_producers', $Producers);
    }
}
