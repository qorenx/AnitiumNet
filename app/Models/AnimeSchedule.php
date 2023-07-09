<?php

namespace App\Models;

use CodeIgniter\Model;

class AnimeSchedule extends Model
{
    protected $table = 'ani_schedule'; 
    protected $primaryKey = 'id';  

    protected $allowedFields = ['id', 'sc_days', 'sc_id', 'sc_ep', 'sc_name', 'sc_time'];


    public function schedulenext($uid){
        return $this->db
            ->table('ani_schedule')
            ->select('sc_days, sc_ep, sc_time')
            ->where('sc_days >', date('d'))
            ->where('sc_id', $uid)
            ->orderBy('sc_days')
            ->limit(1)
            ->get()
            ->getResultArray();
    }
    
    public function schedule($days) {
        return  $this->db
          ->table('ani_schedule')
          ->where('sc_days', $days)
          ->select('sc_days, sc_ep, sc_time, sc_name, sc_id')
          ->orderBy('sc_time')
          ->get()
          ->getResultArray();
      
      }

}