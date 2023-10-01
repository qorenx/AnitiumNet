<?php

namespace App\Models;

use CodeIgniter\Model;

class AnimeSchedule extends Model
{
    protected $table = 'ani_schedule'; 
    protected $primaryKey = 'id';  

    protected $allowedFields = ['id', 'sc_days', 'sc_id', 'sc_ep', 'sc_time'];

    //Aşağıdaki Function Düzenlendi.
    public function get_ScheduleDays($Days) {
        return  $this
              ->join('anime', 'ani_schedule.sc_id = anime.uid')
              ->where('sc_days', $Days)
              ->select('sc_days, sc_ep, sc_time, ani_schedule.sc_id, anime.ani_name')
              ->orderBy('sc_time')
              ->get()
              ->getResultArray();
          
    }

    //Aşağıdaki Function Düzenlendi.
    public function get_EpisodeSchedule($Uid){
        return $this
            ->select('sc_days, sc_ep, sc_time')
            ->where('sc_days >', date('d'))
            ->where('sc_id', $Uid)
            ->orderBy('sc_days')
            ->limit(1)
            ->get()
            ->getResultArray();
    }
    
}