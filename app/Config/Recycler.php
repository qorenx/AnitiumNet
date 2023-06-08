<?php

/**
 * This file is part of Bonfire.
 *
 * (c) Lonnie Ezell <lonnieje@gmail.com>
 *
 * For the full copyright and license information, please view
 * the LICENSE file that was distributed with this source code.
 */

namespace Config;

use Bonfire\Recycler\Config\Recycler as BonfireRecycler;

class Recycler extends BonfireRecycler
{
    /**
     * --------------------------------------------------------------------------
     * Default Resource
     * --------------------------------------------------------------------------
     *
     * The resource list that should display when the user
     * views the landing page for the recycler.
     *
     * Must be one of the resource listed in $this->resources.
     */
    public $defaultResource = 'users';

    /**
     * --------------------------------------------------------------------------
     * Available Resources
     * --------------------------------------------------------------------------
     *
     * Provides a list of the available resources that can be recycled,
     * along with some basic information about how to display that data.
     */
    public $resources = [
        'users' => [
            'label'   => 'Users',
            'model'   => 'Bonfire\Users\Models\UserModel',
            'columns' => [
                'username', 'first_name', 'last_name', 'email',
            ],
        ],
    ];
}
