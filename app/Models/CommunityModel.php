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
        'created_at',
        'updated_at',
        'deleted_at'
    ];

    public function boardlastpost()
    {
        $result = $this->db
            ->table('community')
            ->select('community.user_id, community.id, community.post_id, community.post_tag, community.post_head, community.post_content, community.created_at, users.username, users.avatar, auth_groups_users.group')
            ->select('COUNT(community_post.post_id) AS post_id_count', false)
            ->join('community_post', 'community.post_id = community_post.post_id', 'left outer')
            ->join('users', 'users.id = community.user_id', 'left outer')
            ->join('auth_groups_users', 'auth_groups_users.id = community.user_id', 'left outer')
            ->groupBy('community.post_id')
            ->orderBy('created_at', 'DESC')
            ->get()
            ->getResultArray();
        foreach ($result as &$post) {
            $main_like = $this->communitymainpostcount($post['post_id']);
            $post['main_like'] = $main_like;
        }
        return $result;
    }

    public function boardmypost($userid)
    {
        $result =  $this->db
            ->table('community')
            ->where('community.user_id', $userid)
            ->select('community.user_id, community.id, community.post_id, community.post_tag, community.post_head, community.post_content, community.created_at, users.username, users.avatar, auth_groups_users.group')
            ->select('COUNT(community_post.post_id) AS post_id_count', false)
            ->join('community_post', 'community.post_id = community_post.post_id', 'left outer')
            ->join('users', 'users.id = community.user_id', 'left outer')
            ->join('auth_groups_users', 'auth_groups_users.id = community.user_id', 'left outer')
            ->groupBy('community.post_id')
            ->orderBy('created_at', 'DESC')
            ->get()
            ->getResultArray();
        foreach ($result as &$post) {
            $main_like = $this->communitymainpostcount($post['post_id']);
            $post['main_like'] = $main_like;
        }
        return $result;
    }

    public function boardtag($tagValue)
    {
        $result = $this->db
            ->table('community')
            ->where('post_tag', $tagValue)
            ->select('community.user_id, community.id, community.post_id, community.post_tag, community.post_head, community.post_content, community.created_at, users.username, users.avatar, auth_groups_users.group')
            ->select('COUNT(community_post.post_id) AS post_id_count', false)
            ->join('community_post', 'community.post_id = community_post.post_id', 'left outer')
            ->join('users', 'users.id = community.user_id', 'left outer')
            ->join('auth_groups_users', 'auth_groups_users.id = community.user_id', 'left outer')
            ->groupBy('community.post_id')
            ->orderBy('created_at', 'DESC')
            ->get()
            ->getResultArray();
            foreach ($result as &$post) {
                $main_like = $this->communitymainpostcount($post['post_id']);
                $post['main_like'] = $main_like;
            }
            return $result;
    }

    public function postview($postid)  //board post
    {
        $result = $this->db
            ->table('community')
            ->where('post_id', $postid)
            ->select('community.user_id, community.id,  community.post_id, community.post_tag, community.post_head, community.post_content, community.created_at, users.username, users.avatar, auth_groups_users.group')
            ->join('users', 'users.id = community.user_id', 'left outer')
            ->join('auth_groups_users', 'auth_groups_users.id = community.user_id', 'left outer')
            ->get()
            ->getResultArray();
        foreach ($result as &$post) {
            $main_like = $this->communitymainpostcount($post['post_id']);
            $post['main_like'] = $main_like;
        }
        return $result;
    }

    public function communitymainpostcount($postid)
    {
        $results = $this->db->table('community_vote')
            ->where('post_id', $postid)
            ->select('post_id, post_rep, post_disrep')
            ->get()
            ->getResultArray();

        $total_post_rep = array_reduce($results, function ($carry, $item) {
            return $carry + $item['post_rep'];
        }, 0);

        $total_post_disrep = array_reduce($results, function ($carry, $item) {
            return $carry + $item['post_disrep'];
        }, 0);

        return [
            'post_id' => $postid,
            'total_post_rep' => $total_post_rep,
            'total_post_disrep' => $total_post_disrep
        ];
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


    public function boardusercomment($userid)
    {
        return $this->db
            ->table('community')
            ->where('community.user_id', $userid)
            ->select('users.avatar, users.username, community.post_id, community.created_at, community.post_head, 1 as from')
            ->join('users', 'users.id = community.user_id')
            ->orderBy('community.created_at', 'DESC')
            ->limit(5)
            ->get()
            ->getResultArray();
    }


    public function lastboard()
    {
        return $this->db
            ->table('community')
            ->select('community.user_id, community.id, community.post_id, community.post_tag, community.post_head, community.post_content, community.created_at, users.username, users.avatar, auth_groups_users.group')
            ->select('COUNT(community_post.post_id) AS post_id_count', false)
            ->join('community_post', 'community.post_id = community_post.post_id', 'left outer')
            ->join('users', 'users.id = community.user_id', 'left outer')
            ->join('auth_groups_users', 'auth_groups_users.id = community.user_id', 'left outer')
            ->groupBy('community.post_id')
            ->orderBy('created_at', 'DESC')
            ->get()
            ->getResultArray();
    }
}
