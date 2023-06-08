<?php 

namespace App\Models;

use CodeIgniter\Model;

class PostReportModel extends Model
{
    protected $table = 'reportpost'; 
    protected $primaryKey = 'id';  
    protected $allowedFields = [  
        'id', 
        'username', 
        'postid',
        'ids'
    ];

    public function postreport() {
        return $this->db
        ->table('reportpost')
        ->select('reportpost.postid, reportpost.username, reportpost.ids, episode_comment.post_id, episode_comment.post_content, episode_comment.id')
        ->join('episode_comment', 'episode_comment.post_id = reportpost.postid', 'left outer')
        ->get()
        ->getResultArray();
    }
}