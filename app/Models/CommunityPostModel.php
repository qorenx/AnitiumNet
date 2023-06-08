<?php 

namespace App\Models;

use CodeIgniter\Model;

class CommunityPostModel extends Model
{
    protected $table = 'community_post';
    protected $primaryKey = 'id';
    
    protected $useTimestamps = true;
    protected $createdField = 'created_at';
    protected $updatedField = 'updated_at';
    protected $deletedField = 'deleted_at';
    
    protected $allowedFields = [
        'id',
        'user_id',
        'post_id',
        'post_content',
        'post_rep',
        'post_disrep',
        'created_at',
        'updated_at',
        'deleted_at'
    ];

    public function postlist($postid)
    {
        return $this->db
        ->table('community_post')
        ->where('post_id', $postid)
        ->select('community_post.user_id, community_post.id, community_post.post_id, community_post.post_content, community_post.post_rep, community_post.post_disrep, community_post.created_at, users.username, users.avatar')
        ->join('users', 'users.id = community_post.user_id')
        ->orderBy('created_at', 'DESC')
        ->get()
        ->getResultArray();
    }

    public function postcount($postid)
    {
        return $this->db->table('community_post')
            ->where('post_id', $postid)
            ->countAllResults();
    }

    public function boardusercomment($userid){
        return $this->db
        ->table('community_post')
        ->select('post_content, created_at')
        ->where('user_id', $userid)
        ->orderBy('created_at', 'DESC')
        ->limit(5)
        ->get()
        ->getResultArray();
    }

}