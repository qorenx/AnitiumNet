<?php

namespace App\Models;

use CodeIgniter\Model;

class Settings extends Model
{
    protected $table = 'settings';
    protected $primaryKey = 'id';

    protected $allowedFields = [
        'id',
        'class',
        'key',
        'value',
        'type',
        'context',
        'created_at',
        'updated_at'
    ];

    protected $useTimestamps = true;
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';

    public function getLicense()
    {
        $query = $this->select('id, class, key, value, type, context');

        if (!method_exists($query, 'find')) {
            return [];
        }

        $result = $query->find(2);

        if (!is_array($result)) {
            return [];
        }

        return (array_key_exists('key', $result) && array_key_exists('value', $result))
            ? ['key' => $result['key'], 'value' => $result['value']]
            : [];
    }

    public function getIndex()
    {
        $query = $this->select('id, class, key, value, type, context');

        $results = method_exists($query, 'find')
            ? $query->find([5, 6, 10, 11, 12, 13])
            : [];

        $results = is_array($results) || $results instanceof \Traversable
            ? $results
            : [];

        $groupedResults = [];
        foreach ($results as $result) {
            if (array_key_exists('type', $result)) {
                $groupedResults[$result['type']][] = $result;
            }
        }

        return $groupedResults;
    }

    public function getHome()
    {
        $query = $this->select('id, class, key, value, type, context');

        $results = method_exists($query, 'find')
            ? $query->find([5, 6, 10, 11, 14, 24, 25, 26, 27, 30, 31])
            : [];

        $results = is_array($results) || $results instanceof \Traversable
            ? $results
            : [];

        $groupedResults = [];
        foreach ($results as $result) {
            if (array_key_exists('type', $result)) {
                $groupedResults[$result['type']][] = $result;
            }
        }

        return $groupedResults;
    }

    public function getAnime()
    {
        $query = $this->select('id, class, key, value, type, context');

        $results = method_exists($query, 'find')
            ? $query->find([5, 6, 10, 11, 14, 24, 25, 26, 27, 30, 31])
            : [];

        $results = is_array($results) || $results instanceof \Traversable
            ? $results
            : [];

        $groupedResults = [];
        foreach ($results as $result) {
            if (array_key_exists('type', $result)) {
                $groupedResults[$result['type']][] = $result;
            }
        }

        return $groupedResults;
    }

    public function getLastEpisode()
    {
        $query = $this->select('id, class, key, value, type, context');

        $results = method_exists($query, 'find')
            ? $query->find([5, 6, 10, 11, 14, 24, 25, 26, 27, 30, 31])
            : [];

        $results = is_array($results) || $results instanceof \Traversable
            ? $results
            : [];

        $groupedResults = [];
        foreach ($results as $result) {
            if (array_key_exists('type', $result)) {
                $groupedResults[$result['type']][] = $result;
            }
        }

        return $groupedResults;
    }

    public function getTypeSearch()
    {
        $query = $this->select('id, class, key, value, type, context');

        $results = method_exists($query, 'find')
            ? $query->find([5, 6, 10, 11, 14, 24, 25, 26, 27, 30, 31])
            : [];

        $results = is_array($results) || $results instanceof \Traversable
            ? $results
            : [];

        $groupedResults = [];
        foreach ($results as $result) {
            if (array_key_exists('type', $result)) {
                $groupedResults[$result['type']][] = $result;
            }
        }

        return $groupedResults;
    }

    public function getGenreSearch()
    {
        $query = $this->select('id, class, key, value, type, context');

        $results = method_exists($query, 'find')
            ? $query->find([5, 6, 10, 11, 14, 24, 25, 26, 27, 30, 31])
            : [];

        $results = is_array($results) || $results instanceof \Traversable
            ? $results
            : [];

        $groupedResults = [];
        foreach ($results as $result) {
            if (array_key_exists('type', $result)) {
                $groupedResults[$result['type']][] = $result;
            }
        }

        return $groupedResults;
    }

    public function getAZSearch()
    {
        $query = $this->select('id, class, key, value, type, context');

        $results = method_exists($query, 'find')
            ? $query->find([5, 6, 10, 11, 14, 24, 25, 26, 27, 30, 31])
            : [];

        $results = is_array($results) || $results instanceof \Traversable
            ? $results
            : [];

        $groupedResults = [];
        foreach ($results as $result) {
            if (array_key_exists('type', $result)) {
                $groupedResults[$result['type']][] = $result;
            }
        }

        return $groupedResults;
    }

    public function getFilterSearch()
    {
        $query = $this->select('id, class, key, value, type, context');

        $results = method_exists($query, 'find')
            ? $query->find([5, 6, 10, 11, 14, 24, 25, 26, 27, 30, 31])
            : [];

        $results = is_array($results) || $results instanceof \Traversable
            ? $results
            : [];

        $groupedResults = [];
        foreach ($results as $result) {
            if (array_key_exists('type', $result)) {
                $groupedResults[$result['type']][] = $result;
            }
        }

        return $groupedResults;
    }

    public function getEpisode()
    {
        $query = $this->select('id, class, key, value, type, context');

        $results = method_exists($query, 'find')
            ? $query->find([5, 6, 10, 11, 14, 20, 24, 25, 26, 27, 30, 31])
            : [];

        $results = is_array($results) || $results instanceof \Traversable
            ? $results
            : [];

        $groupedResults = [];
        foreach ($results as $result) {
            if (array_key_exists('type', $result)) {
                $groupedResults[$result['type']][] = $result;
            }
        }

        return $groupedResults;
    }

    public function getBoard()
    {
        $query = $this->select('id, class, key, value, type, context');

        $results = method_exists($query, 'find')
            ? $query->find([5, 6, 10, 11, 14, 24, 25, 26, 27, 30, 31])
            : [];

        $results = is_array($results) || $results instanceof \Traversable
            ? $results
            : [];

        $groupedResults = [];
        foreach ($results as $result) {
            if (array_key_exists('type', $result)) {
                $groupedResults[$result['type']][] = $result;
            }
        }

        return $groupedResults;
    }

    public function getBoardProfile()
    {
        $query = $this->select('id, class, key, value, type, context');

        $results = method_exists($query, 'find')
            ? $query->find([5, 6, 10, 11, 14, 24, 25, 26, 27, 30, 31])
            : [];

        $results = is_array($results) || $results instanceof \Traversable
            ? $results
            : [];

        $groupedResults = [];
        foreach ($results as $result) {
            if (array_key_exists('type', $result)) {
                $groupedResults[$result['type']][] = $result;
            }
        }

        return $groupedResults;
    }

    public function getUserProfile()
    {
        $query = $this->select('id, class, key, value, type, context');

        $results = method_exists($query, 'find')
            ? $query->find([5, 6, 10, 11, 14, 24, 25, 26, 27, 30, 31])
            : [];

        $results = is_array($results) || $results instanceof \Traversable
            ? $results
            : [];

        $groupedResults = [];
        foreach ($results as $result) {
            if (array_key_exists('type', $result)) {
                $groupedResults[$result['type']][] = $result;
            }
        }

        return $groupedResults;
    }

    public function getSettings()
    {
        $results = $this
            ->select('id, class, key, value, type, context')
            ->findAll();

        $groupedResults = [];
        foreach ($results as $result) {
            $groupedResults[$result['type']][] = $result;
        }

        return $groupedResults;
    }

    public function settingupdate($id, $data)
    {
        $builder = $this->db->table('settings');
        $builder->where('id', $id);
        $builder->set($data);
        $builder->update();
    }





    //Panel İndex Sayfasındaki Veriler
    public function getAdminSettings()
    {
        $results = $this
            ->select('id, class, key, value, type, context')
            ->findAll();

        $groupedResults = [];
        foreach ($results as $result) {
            $groupedResults[$result['type']][] = $result;
        }

        return $groupedResults;
    }


}
