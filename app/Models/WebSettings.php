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
        'webconvert2', 
        'webdisqus', 
        'webdiscord', 
        'webtwitter',
        'webdonation',
        'webdonation2'

    ];


    public function getIndex()
    {
        return $this
        ->select('webname, webinfo, webaniscover, webindexbg, weblogo, weburl, webicon')
        ->find(1);
    }
    
    public function getHome()
    {
        return $this
        ->select('webname, webinfo, webicon, webfooter, webdonation, webdiscord, webtwitter, webdonation2')
        ->find(1);
    }
    public function getdetails()
    {
        return $this
        ->select('webname, webinfo, webicon, webfooter, webdonation, webdiscord, webtwitter, webdonation2, webconvert, webconvert2')
        ->find(1);
    }

    public function getepisode()
    {
        return $this
        ->select('webname, webinfo, webicon, webfooter, webdonation, webdiscord, webtwitter, webdonation2, webdisqus, webconvert, webconvert2')
        ->find(1);
    }

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
