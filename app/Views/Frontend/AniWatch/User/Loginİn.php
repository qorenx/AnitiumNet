<?php if (auth()->user()) : ?>
    <div id="header_right">
        <div id="user-slot">
            <div class="header_right-user logged">
                <div class="dropdown">
                    <div class="btn-user-avatar" data-toggle="dropdown">
                        <div class="profile-avatar">
                            <img src="<?= auth()->user()->avatar ?>">
                        </div>
                    </div>
                    <?php $username = auth()->user()->username; ?>
                    <div id="user_menu" class="dropdown-menu dropdown-menu-right">
                        <div class="dropdown-item dropdown-item-user">
                            <div class="user-detail">
                                <div class="name"><?= $username ?></div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <?php $urls = [
                            "Profile" => "/user/profile",
                            "Watching" => "/user/profile/status/favorite",
                            "Settings" => "/user/profile/settings",
                        ];
                        ?>
                        <div class="grid-menu">
                            <?php foreach ($urls as $name => $url) { ?>
                                <a class="dropdown-item" href="<?= $url ?>">
                                    <i class="<?php
                                                switch ($name) {
                                                    case 'Profile':
                                                        echo 'fas fa-user mr-2';
                                                        break;
                                                    case 'Watching':
                                                        echo 'fas fa-eye';
                                                        break;
                                                    case 'Settings':
                                                        echo 'fa-solid fa-cog';
                                                        break;
                                                }
                                                ?> mr-2"></i><?= $name ?></a>
                            <?php } ?>
                            <div class="clearfix"></div>
                        </div>
                        <a class="dropdown-item text-right text-white" href="<?= base_url('users/logout') ?>">Logout<i class="fas fa-arrow-right ml-2 mr-1"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php else : ?>

    <div id="header_right">
        <div id="user-slot">
            <div class="header_right-user logged">
                <div class="dropdown">
                    <a class="btn-user btn btn-sm btn-primary btn-login" data-toggle="modallogin" data-target="#modallogin" data-tab-show="#modal-tab-login"><i style="color:red;" class="fa-solid fa-user-astronaut fa-beat"></i></a>
                </div>
            </div>
        </div>
    </div>

<?php endif ?>