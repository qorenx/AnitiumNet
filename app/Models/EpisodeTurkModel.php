<?php 

namespace App\Models;

use CodeIgniter\Model;

class EpisodeTurkModel extends Model
{
    protected $table = 'episode_turk'; 
    protected $primaryKey = 'id';  
    protected $allowedFields = [  
        'id', 
        'uid', 
        'turk_id', 
        'ep_turk_webconverter',
        'turk_name', 
        'turk_frame'
    ];

    public function deleteTurkEmbed($id)
    {
        $builder = $this->db->table('episode_turk');
        $builder->where('id', $id)->delete();
    }

}