<?php

namespace App\Models;

use CodeIgniter\Model;

class EpisodeDownloadModel extends Model
{
    protected $table = 'episode_download'; 
    protected $primaryKey = 'id';  

    protected $allowedFields = [  
        'id',
        'dw_id',
        'dw_ep',
        'dw_name',
        'dw_link'
    ];

    public function getdownload($uid, $ep_id_name)
    {
        return $this->db
            ->table('episode_download')
            ->select('dw_name, dw_link')
            ->where([
                'dw_id' => $uid,
                'dw_ep' => $ep_id_name
            ])
            ->get()
            ->getResultArray();
    }

    public function downloaddelete($id)
    {
        $builder = $this->db->table('episode_download');
        $builder->where('id', $id)->delete();
    }
}
