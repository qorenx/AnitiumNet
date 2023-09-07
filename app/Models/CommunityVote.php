<?php

namespace App\Models;

use CodeIgniter\Model;

class CommunityVote extends Model
{
    protected $table = 'community_vote';
    protected $primaryKey = 'id';

    protected $allowedFields = [
        'id',
        'user_id',
        'post_id',
        'post_rep',
        'post_disrep'
    ];

    public function communityrep($postid, $userid)
    {
        $table = $this->db->table('community_vote');
        $conditions = [
            'user_id' => $userid,
            'post_id' => $postid,
        ];
        $exists = $table->where($conditions)->countAllResults();
    
        $data = [
            'post_rep' => 1,
            'post_disrep' => 0
        ];
    
        if ($exists > 0) {
            $table->where($conditions)->update($data);
        } else {
            $table->insert(array_merge($conditions, $data));
        }
    }

    public function communitydisrep($postid, $userid)
    {
        $table = $this->db->table('community_vote');
        $conditions = [
            'user_id' => $userid,
            'post_id' => $postid,
        ];
        $exists = $table->where($conditions)->countAllResults();
    
        $data = [
            'post_rep' => 0,
            'post_disrep' => 1
        ];
    
        if ($exists > 0) {
            $table->where($conditions)->update($data);
        } else {
            $table->insert(array_merge($conditions, $data));
        }
    }


    
    public function communityrepcount($postid)
    {
        $results = $this->db->table('community_vote')
        ->where('post_id', $postid)
        ->select('post_id, post_rep, post_disrep')
        ->get()
        ->getResultArray();
    
        $total_post_rep = array_reduce($results, function($carry, $item){
            return $carry + $item['post_rep'];
        }, 0);
    
        $total_post_disrep = array_reduce($results, function($carry, $item){
            return $carry + $item['post_disrep'];
        }, 0);
    
        return [
            'post_id' => $postid,
            'total_post_rep' => $total_post_rep,
            'total_post_disrep' => $total_post_disrep
        ];
    }


}
