<?php 

namespace App\Models;

use CodeIgniter\Model;

class EpisodeCommentModel extends Model
{
    protected $table = 'episode_comment';
    protected $primaryKey = 'id';
    
    protected $useTimestamps = true;
    protected $createdField = 'created_at';
    protected $updatedField = 'updated_at';
    protected $deletedField = 'deleted_at';
    
    protected $allowedFields = [
        'id',
        'user_id',
        'post_id',
        'post_ani',
        'post_ep',
        'post_spo',
        'post_content',
        'post_rep',
        'post_disrep',
        'created_at',
        'updated_at',
        'deleted_at'
    ];


    public function postlist($uid, $ep_id_name)
    {
        $result = $this->db
        ->table('episode_comment')
        ->where('post_ani', $uid)
        ->where('post_ep', $ep_id_name)
        ->select('
        episode_comment.user_id,
        episode_comment.id,
        episode_comment.post_id,
        episode_comment.post_content,
        episode_comment.post_rep,
        episode_comment.post_disrep,
        episode_comment.created_at,
        users.username,
        users.avatar,
        auth_groups_users.group,
        ')
        ->join('users', 'users.id = episode_comment.user_id')
        ->join('auth_groups_users', 'auth_groups_users.id = episode_comment.user_id', 'left outer')

        ->orderBy('episode_comment.created_at', 'DESC')
        ->get()
        ->getResultArray();
    
        foreach ($result as &$post) {
            $replies = $this->db
            ->table('episode_comment_repy')
            ->where('episode_comment_repy.post_id', $post['post_id'])
            ->select('
            episode_comment_repy.user_id,
            episode_comment_repy.id,
            episode_comment_repy.post_id,
            episode_comment_repy.post_u_id,
            episode_comment_repy.post_content,
            episode_comment_repy.post_rep,
            episode_comment_repy.post_disrep,
            episode_comment_repy.created_at,
            users.username,
            users.avatar,
            auth_groups_users.group,
            ')
            ->join('users', 'users.id = episode_comment_repy.user_id')
            ->join('auth_groups_users', 'auth_groups_users.id = episode_comment_repy.user_id', 'left outer')

            ->orderBy('episode_comment_repy.created_at', 'DESC')
            ->get()
            ->getResultArray();
    
            $post['replies'] = $replies;
        }
    
        return $result;
    }



    public function epcommentlist($uid, $ep_id_name){
        return $this->db
        ->table('episode_comment')
        ->where('post_ani', $uid)
        ->where('post_ep', $ep_id_name)
        ->select('episode_comment.post_rep, episode_comment.post_disrep, users.username, users.avatar, auth_groups_users.group, episode_comment.id, episode_comment.user_id, episode_comment.post_id, episode_comment.post_ep, episode_comment.post_spo, episode_comment.post_content, episode_comment.created_at')
        ->join('users', 'users.id = episode_comment.user_id', 'left outer')
        ->join('auth_groups_users', 'auth_groups_users.id = episode_comment.user_id', 'left outer')
        ->orderBy('created_at', 'DESC')
        ->get()
        ->getResultArray();
    }

    public function epcommentcount($uid, $ep_id_name){
        return $this->db
            ->table('episode_comment')
            ->selectCount('post_ep', 'post_count')
            ->where('post_ani', $uid)
            ->where('post_ep', $ep_id_name)
            ->get()
            ->getResultArray();
    }

    public function lastepisodecomment(){
        $db = \Config\Database::connect();
        $query = $db
            ->table('episode_comment')
            ->select('anime.ani_name, episode_comment.post_ani, episode_comment.post_rep, episode_comment.post_disrep, users.username, users.avatar, auth_groups_users.group, episode_comment.id, episode_comment.user_id, episode_comment.post_ep, episode_comment.post_content, episode_comment.created_at')
            ->join('anime', 'anime.uid = episode_comment.post_ani', 'left outer')
            ->join('users', 'users.id = episode_comment.user_id', 'left outer')
            ->join('auth_groups_users', 'auth_groups_users.id = episode_comment.user_id', 'left outer')
            ->orderBy('created_at', 'DESC')
            ->limit(10)
            ->get()
            ->getResultArray();
        $db->close();
        return $query;
    }

    public function boardusercomment($userid){
        return $this->db
        ->table('episode_comment')
        ->where('user_id', $userid)
        ->select('anime.ani_name, episode_comment.post_ep, users.avatar, users.username, episode_comment.user_id, episode_comment.created_at, episode_comment.post_ani as post_id, 3 as from')
        ->join('users', 'users.id = episode_comment.user_id')
        ->join('anime', 'anime.uid = episode_comment.post_ani')
        ->orderBy('episode_comment.created_at', 'DESC')
        ->limit(5)
        ->get()
        ->getResultArray();
    }
}