<header class="topbar-nav">
    <nav class="navbar navbar-expand fixed-top">
        <ul class="navbar-nav mr-auto align-items-center">
            <li class="nav-item">
                <a class="nav-link toggle-menu" href="javascript:void();">
                    <i class="icon-menu menu-icon"></i>
                </a>
            </li>
        </ul>
        <?php
        $user = auth()->user();
        if ($user) :
            $username = $user->username;
            $email = $user->email;
            $avatar = $user->avatar;
            $urls = [
                "Profile" => "/user/profile",
                "Watching" => "/user/profile/status/favorite",
                "Settings" => "/user/profile/settings"
            ];
            $icons = [
                "Profile" => 'fas fa-user mr-2',
                "Watching" => 'fas fa-eye',
                "Settings" => 'fa-solid fa-cog'
            ];
        ?>
            <ul class="navbar-nav align-items-center right-nav-link">
                <li class="nav-item dropdown-lg">
                    <a class="nav-link dropdown-toggle dropdown-toggle-nocaret waves-effect" data-toggle="dropdown" href="javascript:void();">
                        <i class="fa fa-bell-o"></i></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="#">
                        <span class="user-profile"><img src="<?= $avatar ?>" class="img-circle" alt="user avatar"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right" style="background-color: #8883f1;">
                        <li class="dropdown-item user-details">
                            <div class="media">
                                <div class="avatar"><img class="align-self-start mr-3" src="<?= $avatar ?>" alt="user avatar"></div>
                                <div class="media-body">
                                    <h6 class="mt-2 user-title"><?= $username ?></h6>
                                    <p class="user-subtitle"><?= $email ?></p>
                                </div>
                            </div>
                        </li>
                        <div class="grid-menu">
                            <?php foreach ($urls as $name => $url) { ?>
                                <a class="dropdown-item" href="<?= $url ?>"><i class="<?= $icons[$name] ?> mr-2"></i><?= $name ?></a>
                            <?php } ?>
                            <div class="clearfix"></div>
                        </div>
                        <a class="dropdown-item text-right text-white" href="<?= base_url('users/logout') ?>">Logout<i class="fas fa-arrow-right ml-2 mr-1"></i></a>
                    </ul>
                </li>
            </ul>
        <?php endif ?>

    </nav>
</header>