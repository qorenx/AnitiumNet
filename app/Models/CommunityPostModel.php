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
        'post_c_id',
        'post_content',
        'post_rep',
        'post_disrep',
        'created_at',
        'updated_at',
        'deleted_at'
    ];

    public function postlist($postid)
    {
        $result = $this->db
        ->table('community_post')
        ->where('community_post.post_id', $postid)
        ->select('
        community_post.user_id,
        community_post.id,
        community_post.post_id,
        community_post.post_c_id,
        community_post.post_content,
        community_post.post_rep,
        community_post.post_disrep,
        community_post.created_at,
        users.username,
        users.avatar,
        auth_groups_users.group,
        ')
        ->join('users', 'users.id = community_post.user_id')
        ->join('auth_groups_users', 'auth_groups_users.id = community_post.user_id', 'left outer')

        ->orderBy('community_post.created_at', 'DESC')
        ->get()
        ->getResultArray();
    
        foreach ($result as &$post) {
            $replies = $this->db
            ->table('community_repy_post')
            ->where('community_repy_post.post_c_id', $post['post_c_id'])
            ->select('
            community_repy_post.user_id,
            community_repy_post.id,
            community_repy_post.post_u_id,
            community_repy_post.post_c_id,
            community_repy_post.post_content,
            community_repy_post.post_rep,
            community_repy_post.post_disrep,
            community_repy_post.created_at,
            users.username,
            users.avatar,
            auth_groups_users.group,
            ')
            ->join('users', 'users.id = community_repy_post.user_id')
            ->join('auth_groups_users', 'auth_groups_users.id = community_repy_post.user_id', 'left outer')

            ->orderBy('community_repy_post.created_at', 'DESC')
            ->get()
            ->getResultArray();
    
            $post['replies'] = $replies;
        }
    
        return $result;
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
        ->where('community_post.user_id', $userid)
        ->select('users.avatar, users.username, community_post.post_id, community_post.created_at, community.post_head, 2 as from')
        ->join('users', 'users.id = community_post.user_id')
        ->join('community', 'community.post_id = community_post.post_id')
        ->orderBy('community_post.created_at', 'DESC')
        ->limit(5)
        ->get()
        ->getResultArray();
    }
}