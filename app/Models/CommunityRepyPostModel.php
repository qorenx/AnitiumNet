<?php 

namespace App\Models;

use CodeIgniter\Model;

class CommunityRepyPostModel extends Model
{
    protected $table = 'community_repy_post';
    protected $primaryKey = 'id';
    
    protected $useTimestamps = true;
    protected $createdField = 'created_at';
    protected $updatedField = 'updated_at';
    protected $deletedField = 'deleted_at';
    
    protected $allowedFields = [
        'id',
        'user_id',
        'post_u_id',
        'post_c_id',
        'post_content',
        'created_at',
        'updated_at',
        'deleted_at'
    ];

}