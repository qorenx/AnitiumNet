<?php 

namespace App\Models;

use CodeIgniter\Model;

class EpisodeReport extends Model
{
    protected $table = 'report_episode'; 
    protected $primaryKey = 'id';  
    protected $allowedFields = [  
        'id', 
        'report_url',
        'report_type', 
        'report_head',
        'report_content'
    ];



}







