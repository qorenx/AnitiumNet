<?php 

namespace App\Models;

use CodeIgniter\Model;

class EpisodeDubModel extends Model
{
    protected $table = 'episode_dub'; 
    protected $primaryKey = 'id';  
    protected $allowedFields = [  
        'id', 
        'uid', 
        'dub_id', 
        'ep_dub_webconverter',
        'dub_name', 
        'dub_frame'
    ];

    public function deletedubEmbed($id)
    {
        $builder = $this->db->table('episode_dub');
        $builder->where('id', $id)->delete();
    }

    
}