<?php

namespace App\Models;

use CodeIgniter\Model;

class EpisodeCommentReport extends Model
{
    protected $table = 'report_episode_comment';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'id',
        'report_main_id',
        'report_repy_id'
    ];

    public function getcomment()
    {
        return $this->db
            ->table('report_episode_comment')
            ->select('report_episode_comment.report_main_id as id, episode_comment.post_id as repy_id, episode_comment.id as comment_id, report_episode_comment.id as report_id, episode_comment.post_id as id, episode_comment.post_content, episode_comment.post_spo')
            ->join('episode_comment', 'episode_comment.post_id = report_episode_comment.report_main_id')
            ->get()
            ->getResultArray();
    }

    public function getrepycomment()
    {
        return $this->db
            ->table('report_episode_comment')
            ->select('report_episode_comment.report_repy_id as id, episode_comment_repy.id as comment_id, report_episode_comment.id as report_id, episode_comment_repy.post_u_id as id, episode_comment_repy.post_content')
            ->join('episode_comment_repy', 'episode_comment_repy.post_u_id = report_episode_comment.report_repy_id')
            ->get()
            ->getResultArray();
    }
}
