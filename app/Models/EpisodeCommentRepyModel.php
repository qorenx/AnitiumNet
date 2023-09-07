<?php 

namespace App\Models;

use CodeIgniter\Model;

class EpisodeCommentRepyModel extends Model
{
    protected $table = 'episode_comment_repy';
    protected $primaryKey = 'id';
    
    protected $useTimestamps = true;
    protected $createdField = 'created_at';
    protected $updatedField = 'updated_at';
    protected $deletedField = 'deleted_at';
    
    protected $allowedFields = [
        'id',
        'user_id',
        'post_id',
        'post_u_id',
        'post_content',
        'created_at',
        'updated_at',
        'deleted_at'
    ];


}