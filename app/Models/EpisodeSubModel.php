<?php 

namespace App\Models;

use CodeIgniter\Model;

class EpisodeSubModel extends Model
{
    protected $table = 'episode_sub'; 
    protected $primaryKey = 'id';  
    protected $allowedFields = [  
        'id', 
        'uid', 
        'sub_id',
        'ep_sub_webconverter',
        'sub_name', 
        'sub_frame'
    ];

    public function deletesubEmbed($id)
    {
        $builder = $this->db->table('episode_sub');
        $builder->where('id', $id)->delete();
    }


}







