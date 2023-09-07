<?php 

namespace App\Models;

use CodeIgniter\Model;

class BoardReport extends Model
{
    protected $table = 'report_board'; 
    protected $primaryKey = 'id';  
    protected $allowedFields = [  
        'id', 
        'report_main_id'
    ];


    public function boardreport() 
    {
        $builder = $this->db->table('report_board');
        $results = $builder
            ->select('report_board.id as r_id, community.id as b_id, community.post_head, community.post_content')
            ->join('community', 'community.post_id = report_board.report_main_id')
            ->get()
            ->getResultArray();
        return $results;

    }


}







