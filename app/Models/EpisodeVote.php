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

    public function episodevote0($uid, $ep_id_name, $userid)
    {
        $exists = $this->db->table('episode_vote')->where([
            'user_id' => $userid,
            'anime_id' => $uid,
            'anime_ep_id' => $ep_id_name
        ])->countAllResults();
    
        if ($exists > 0) {
            $this->db->table('episode_vote')->where([
                'user_id' => $userid,
                'anime_id' => $uid,
                'anime_ep_id' => $ep_id_name
            ])->update([
                'anime_ep_score' => '0'
            ]);
        } else {
            $this->db->table('episode_vote')->insert([
                'user_id' => $userid,
                'anime_id' => $uid,
                'anime_ep_id' => $ep_id_name,
                'anime_ep_score' => '0'
            ]);
        }
    }

    public function episodevote5($uid, $ep_id_name, $userid)
    {
        $exists = $this->db->table('episode_vote')->where([
            'user_id' => $userid,
            'anime_id' => $uid,
            'anime_ep_id' => $ep_id_name
        ])->countAllResults();
    
        if ($exists > 0) {
            $this->db->table('episode_vote')->where([
                'user_id' => $userid,
                'anime_id' => $uid,
                'anime_ep_id' => $ep_id_name
            ])->update([
                'anime_ep_score' => '5'
            ]);
        } else {
            $this->db->table('episode_vote')->insert([
                'user_id' => $userid,
                'anime_id' => $uid,
                'anime_ep_id' => $ep_id_name,
                'anime_ep_score' => '5'
            ]);
        }
    }

    public function episodevote10($uid, $ep_id_name, $userid)
    {
        $exists = $this->db->table('episode_vote')->where([
            'user_id' => $userid,
            'anime_id' => $uid,
            'anime_ep_id' => $ep_id_name
        ])->countAllResults();
    
        if ($exists > 0) {
            $this->db->table('episode_vote')->where([
                'user_id' => $userid,
                'anime_id' => $uid,
                'anime_ep_id' => $ep_id_name
            ])->update([
                'anime_ep_score' => '10'
            ]);
        } else {
            $this->db->table('episode_vote')->insert([
                'user_id' => $userid,
                'anime_id' => $uid,
                'anime_ep_id' => $ep_id_name,
                'anime_ep_score' => '10'
            ]);
        }
    }


    public function episodevotecount($uid, $ep_id_name)
    {
       return $this->db->table('episode_vote')
       ->where('anime_id', $uid)
       ->where('anime_ep_id', $ep_id_name)
       ->countAllResults();
    }

    public function episodevotescore($uid, $ep_id_name)
    {
       return $this->db->table('episode_vote')
       ->selectSum('anime_ep_score')
       ->where('anime_id', $uid)
       ->where('anime_ep_id', $ep_id_name)
       ->get()
       ->getRow()
       ->anime_ep_score; 
    }


}
