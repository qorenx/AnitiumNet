<?php 

namespace App\Models;

use CodeIgniter\Model;

class EpisodeRawModel extends Model
{
    protected $table = 'episode_raw'; 
    protected $primaryKey = 'id';  
    protected $allowedFields = [  
        'id', 
        'uid', 
        'raw_id',
        'ep_raw_webconverter',
        'raw_name', 
        'raw_frame'
    ];


    public function deleterawEmbed($id)
    {
        $builder = $this->db->table('episode_raw');
        $builder->where('id', $id)->delete();
    }


}







