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
        'embed_frame'
    ];


    public function getGroupedByEmbedType($uid, $ep_id_name)
    {
        $episodeEmbedModel = new self();
        $embedData = $episodeEmbedModel->where(['embed_uid' => $uid, 'embed_id' => $ep_id_name])->orderBy('embed_order', 'ASC')->findAll();
        $groupedByEmbedType = [];

        foreach ($embedData as $data) {
            $groupedByEmbedType[$data['embed_type']][] = [
                'id' => $data['id'],
                'embed_name' => $data['embed_name']
            ];
        }

        return $groupedByEmbedType;
    }
    public function getByEmbedFirst($uid, $ep_id_name)
    {
        $episodeEmbedModel = new self();
    
        // Check embed type 2
        $embedData = $episodeEmbedModel->where([
            'embed_uid' => $uid,
            'embed_id' => $ep_id_name,
            'embed_type' => 2
        ])->orderBy('embed_order', 'ASC')->first();
    
        if (!$embedData) {
            // Check embed_type 1
            $embedData = $episodeEmbedModel->where([
                'embed_uid' => $uid,
                'embed_id' => $ep_id_name,
                'embed_type' => 1
            ])->orderBy('embed_order', 'ASC')->first();
    
            if (!$embedData) {
                // Check embed_type 3
                $embedData = $episodeEmbedModel->where([
                    'embed_uid' => $uid,
                    'embed_id' => $ep_id_name,
                    'embed_type' => 3
                ])->orderBy('embed_order', 'ASC')->first();
    
                if (!$embedData) {
                    // Check embed_type 4
                    $embedData = $episodeEmbedModel->where([
                        'embed_uid' => $uid,
                        'embed_id' => $ep_id_name,
                        'embed_type' => 4
                    ])->orderBy('embed_order', 'ASC')->first();
    
                    if (!$embedData) {
                        return 0;
                    }   
                }
            }
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

    public function getEmbedCount() {
        $query = $this->db->query('SELECT COUNT(*) as count FROM episode_embed');
        $result = $query->getRow();
        return $result->count;
    }
}
