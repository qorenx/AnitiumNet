<?php

namespace App\Models;

use CodeIgniter\Model;

class EpisodeEmbedModel extends Model
{
    protected $table = 'episode_embed';
    protected $primaryKey = 'id';
    protected $allowedFields = [
        'id',
        'embed_order',
        'embed_type',
        'embed_uid',
        'embed_id',
        'embed_name',
        'embed_frame',
        'fansub_name',
        'fansub_translator'
    ];


    public function getGroupedByEmbedType($uid, $ep_id_name)
    {
        $episodeEmbedModel = new self();
        $embedData = $episodeEmbedModel->where(['embed_uid' => $uid, 'embed_id' => $ep_id_name])->orderBy('embed_order', 'ASC')->findAll();
        $groupedByEmbedType = [];
    
        foreach ($embedData as $data) {
            $embedType = $data['embed_type'];
            $fansubName = $data['fansub_name'];
    
            $groupedByEmbedType[$embedType][$fansubName][] = [
                'id' => $data['id'],
                'embed_name' => $data['embed_name'],
                'fansub_translator' => $data['fansub_translator']
            ];
        }
    
        return $groupedByEmbedType;
    }

    public function getByEmbedFirst($uid, $ep_id_name)
    {
        $typeraw = 1;
        $typesub = 1;
        $typedub = 1;
        $typeturk = 1;

        if (auth()->user()) {
            $typeraw = auth()->user()->raw_status;
            $typesub = auth()->user()->sub_status;
            $typedub = auth()->user()->dub_status;
            $typeturk = auth()->user()->turk_status;
        }

        $episodeEmbedModel = new self();

        $embedData = null;
        if ($typeraw) {
            $embedData = $episodeEmbedModel->where([
                'embed_uid' => $uid,
                'embed_id' => $ep_id_name,
                'embed_type' => 1
            ])->orderBy('embed_order', 'ASC')->first();
        }

        if (!$embedData && $typesub) {
            $embedData = $episodeEmbedModel->where([
                'embed_uid' => $uid,
                'embed_id' => $ep_id_name,
                'embed_type' => 2
            ])->orderBy('embed_order', 'ASC')->first();
        }

        if (!$embedData && $typedub) {
            $embedData = $episodeEmbedModel->where([
                'embed_uid' => $uid,
                'embed_id' => $ep_id_name,
                'embed_type' => 3
            ])->orderBy('embed_order', 'ASC')->first();
        }

        if (!$embedData && $typeturk) {
            $embedData = $episodeEmbedModel->where([
                'embed_uid' => $uid,
                'embed_id' => $ep_id_name,
                'embed_type' => 4
            ])->orderBy('embed_order', 'ASC')->first();
        }

        if (!$embedData) {
            return 0;
        }

        return $embedData['id'];
    }

    public function deleteEmbed($id)
    {
        $builder = $this->db->table('episode_embed');
        $builder->where('id', $id)->delete();
    }


    public function getEmbed($embedid)
    {
        $db      = \Config\Database::connect();
        $builder = $db->table('episode_embed');

        $builder->where('id', $embedid);
        $query   = $builder->get();

        $row = $query->getRow();

        $embed_frame = $row->embed_frame;

        return [$embed_frame];
    }

    public function getEmbedCount()
    {
        $query = $this->db->query('SELECT COUNT(*) as count FROM episode_embed');
        $result = $query->getRow();
        return $result->count;
    }
}
