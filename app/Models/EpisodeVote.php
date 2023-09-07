<?php

namespace App\Models;

use CodeIgniter\Model;

class EpisodeVote extends Model
{
    protected $table = 'episode_vote';
    protected $primaryKey = 'id';

    protected $allowedFields = [
        'id',
        'user_id',
        'anime_id',
        'anime_ep_id',
        'anime_ep_score'
    ];

    public function episodevote($vote, $uid, $epid, $userid)
    {
        $table = $this->db->table('episode_vote');
        $conditions = [
            'user_id' => $userid,
            'anime_id' => $uid,
            'anime_ep_id' => $epid,
        ];
        $exists = $table->where($conditions)->countAllResults();
    
        $data = ['anime_ep_score' => $vote];
    
        if ($exists > 0) {
            $table->where($conditions)->update($data);
        } else {
            $table->insert(array_merge($conditions, $data));
        }
    }


    public function episodevotecount($uid, $epid)
    {
       return $this->db->table('episode_vote')
       ->where('anime_id', $uid)
       ->where('anime_ep_id', $epid)
       ->countAllResults();
    }

    public function episodevotescore($uid, $epid)
    {
       return $this->db->table('episode_vote')
       ->selectSum('anime_ep_score')
       ->where('anime_id', $uid)
       ->where('anime_ep_id', $epid)
       ->get()
       ->getRow()
       ->anime_ep_score; 
    }


}
