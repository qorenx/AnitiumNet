<?php

namespace App\Models;

use CodeIgniter\Model;

class CommunityModel extends Model
{
    protected $table = 'community';
    protected $primaryKey = 'id';

    protected $useTimestamps = true;
    protected $createdField = 'created_at';
    protected $updatedField = 'updated_at';
    protected $deletedField = 'deleted_at';

    protected $allowedFields = [
        'id',
        'user_id',
        'post_id',
        'post_tag',
        'post_head',
        'post_content',
        'post_rep',
        'post_disrep',
        'created_at',
        'updated_at',
        'deleted_at'
    ];

    public function boardlastpost()
    {
        return $this->db
            ->table('community')
            ->select('community.user_id, community.id, community.post_id, community.post_tag, community.post_head, community.post_content, community.post_rep, community.post_disrep, community.created_at, users.username, users.avatar, auth_groups_users.group')
            ->select('COUNT(community_post.post_id) AS post_id_count', false)
            ->join('community_post', 'community.post_id = community_post.post_id', 'left outer')
            ->join('users', 'users.id = community.user_id', 'left outer')
            ->join('auth_groups_users', 'auth_groups_users.id = community.user_id', 'left outer')
            ->groupBy('community.post_id')
            ->orderBy('created_at', 'DESC')
            ->get()
            ->getResultArray();
    }

    public function boardmypost($userid)
    {
        return $this->db
            ->table('community')
            ->where('community.user_id', $userid)
            ->select('community.user_id, community.id, community.post_id, community.post_tag, community.post_head, community.post_content, community.post_rep, community.post_disrep, community.created_at, users.username, users.avatar, auth_groups_users.group')
            ->select('COUNT(community_post.post_id) AS post_id_count', false)
            ->join('community_post', 'community.post_id = community_post.post_id', 'left outer')
            ->join('users', 'users.id = community.user_id', 'left outer')
            ->join('auth_groups_users', 'auth_groups_users.id = community.user_id', 'left outer')
            ->groupBy('community.post_id')
            ->orderBy('created_at', 'DESC')
            ->get()
            ->getResultArray();
    }

    public function boardtag($tagValue)
    {
        return $this->db
            ->table('community')
            ->where('post_tag', $tagValue)
            ->select('community.user_id, community.id, community.post_id, community.post_tag, community.post_head, community.post_content, community.post_rep, community.post_disrep, community.created_at, users.username, users.avatar')
            ->select('COUNT(community_post.post_id) AS post_id_count', false)
            ->join('community_post', 'community.post_id = community_post.post_id', 'left outer')
            ->join('users', 'users.id = community.user_id', 'left outer')
            ->groupBy('community.post_id')
            ->orderBy('created_at', 'DESC')
            ->get()
            ->getResultArray();
    }

    public function postview($postid)
    {
        return $this->db
            ->table('community')
            ->where('post_id', $postid)
            ->select('community.user_id, community.id, community.post_id, community.post_tag, community.post_head, community.post_content, community.post_rep, community.post_disrep, community.created_at, users.username, users.avatar, auth_groups_users.group')
            ->join('users', 'users.id = community.user_id', 'left outer')
            ->join('auth_groups_users', 'auth_groups_users.id = community.user_id', 'left outer')
            ->get()
            ->getResultArray();
    }

    public function updates()
    {
        return $this->db->table('community')
            ->where('post_tag', 1)
            ->countAllResults() ?? 0;
    }
    public function general()
    {
        return $this->db->table('community')
            ->where('post_tag', 2)
            ->countAllResults() ?? 0;
    }
    public function suggestion()
    {
        return $this->db->table('community')
            ->where('post_tag', 3)
            ->countAllResults() ?? 0;
    }
    public function question()
    {
        return $this->db->table('community')
            ->where('post_tag', 4)
            ->countAllResults() ?? 0;
    }
    public function discussion()
    {
        return $this->db->table('community')
            ->where('post_tag', 5)
            ->countAllResults() ?? 0;
    }
    public function feedback()
    {
        return $this->db->table('community')
            ->where('post_tag', 6)
            ->countAllResults() ?? 0;
    }


    public function boardusercomment($userid){
        return $this->db
        ->table('community')
        ->select('post_content, created_at')
        ->where('user_id', $userid)
        ->orderBy('created_at', 'DESC')
        ->limit(5)
        ->get()
        ->getResultArray();
    }
}
