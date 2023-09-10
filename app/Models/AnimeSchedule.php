<?php

namespace App\Models;

use CodeIgniter\Model;

class AnimeSchedule extends Model
{
    protected $table = 'ani_schedule'; 
    protected $primaryKey = 'id';  

    protected $allowedFields = ['id', 'sc_days', 'sc_id', 'sc_ep', 'sc_time'];


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
              ->join('anime', 'ani_schedule.sc_id = anime.uid')
              ->where('sc_days', $days)
              ->select('sc_days, sc_ep, sc_time, ani_schedule.sc_id, anime.ani_name')
              ->orderBy('sc_time')
              ->get()
              ->getResultArray();
          
    }

}