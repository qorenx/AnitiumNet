<?php

namespace App\Models;

use CodeIgniter\Model;

class WebSettings extends Model
{
    protected $table = 'websettings';
    protected $primaryKey = 'id';

    protected $allowedFields = [
        'id', 
        'weburl', 
        'weblic', 
        'webname', 
        'webinfo', 
        'weblogo', 
        'webicon', 
        'webindexbg', 
        'webaniscover', 
        'webfooter', 
        'webconvert', 
        'webdisqus', 
        'webdiscord', 
        'webdonation'
    ];

    public function getSettings()
    {
        return $this->find(1);
    }

    public function webupdate($id, $data)
    {
        $builder = $this->db->table('websettings');
        $builder->where('id', $id);
        $builder->set($data);
        $builder->update();
    }
}
