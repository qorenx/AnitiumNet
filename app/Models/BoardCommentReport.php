<?php 

namespace App\Models;

use CodeIgniter\Model;

class BoardCommentReport extends Model
{
    protected $table = 'report_board_comment'; 
    protected $primaryKey = 'id';  
    protected $allowedFields = [  
        'id', 
        'report_main_id',
        'report_repy_id'
    ];

    public function getcomment()
    {
        return $this->db
            ->table('report_board_comment')
            ->select('report_board_comment.id as report_id, community_post.id as comment_id, community_post.post_content, community_post.post_c_id as repy_id')
            ->join('community_post', 'community_post.post_c_id = report_board_comment.report_main_id')
            ->get()
            ->getResultArray();
    }

    public function getrepy()
    {
        return $this->db
            ->table('report_board_comment')
            ->select('report_board_comment.id as report_id, community_repy_post.id as comment_id, community_repy_post.post_content')
            ->join('community_repy_post', 'community_repy_post.post_u_id = report_board_comment.report_repy_id')
            ->get()
            ->getResultArray();
    }
}







