<!DOCTYPE html>
<html prefix="og: http://ogp.me/ns#" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
    <?php if (!empty($webdata) && !empty($animeData) && !empty($currentData)) : ?>
        <title><?php echo $webdata['webname']; ?>-<?= $animeData['ani_name'] ?>-Episode <?= $currentData->ep_id_name ?>-<?= $currentData->ep_name ?></title>
    <?php elseif (!empty($animetv['ani_name'])) : ?>
        <title><?php echo $webdata['webname']; ?>-<?= $animetv['ani_name'] ?></title>
    <?php else : ?>
        <title><?php echo $webdata['webname']; ?>-<?php echo $webdata['webinfo']; ?></title>
    <?php endif; ?>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="charset" content="UTF-8" />
    <meta name="robots" content="index,follow" />
    <meta http-equiv="content-language" content="en" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="description" content="<?php echo $webdata['webname']; ?> - Official <?php echo $webdata['webname']; ?> #1 Watch High Quality Anime Online Without Ads. You can watch anime online free in HD without Ads. Best place for free find and one-click anime." />
    <meta name="keywords" content="anime to watch, watch anime,anime online, free anime online, online anime, anime streaming, stream anime online, english anime, english dubbed anime" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
    <link rel="shortcut icon" href="<?php echo base_url(); ?>favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>files/css/home.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>files/css/style.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>files/css/min.css">
    <link rel="manifest" href="./manifest.json">
    <link rel="icon" sizes="192x192" href="<?php echo $webdata['webicon']; ?>">
    <script type="text/javascript">
        setTimeout(function() {
            var wpse326013 = document.createElement('link');
            wpse326013.rel = 'stylesheet';
            wpse326013.href = 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css';
            wpse326013.type = 'text/css';
            var godefer = document.getElementsByTagName('link')[0];
            godefer.parentNode.insertBefore(wpse326013, godefer);
            var wpse326013_2 = document.createElement('link');
            wpse326013_2.rel = 'stylesheet';
            wpse326013_2.href =
                'https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css';
            wpse326013_2.type = 'text/css';
            var godefer2 = document.getElementsByTagName('link')[0];
            godefer2.parentNode.insertBefore(wpse326013_2, godefer2);
        }, 500);
    </script>
    <?php if (session()->getFlashdata('success')) : ?>
        <div id="toast-container" class="toast-bottom-right">
            <div class="toast toast-success" aria-live="polite">
                <div class="toast-message"><?= session()->getFlashdata('success') ?></div>
            </div>
        </div>
        <script>
            setTimeout(function() {
                document.getElementById("toast-container").style.display = "none";
            }, 5000);
        </script>
    <?php endif; ?>
    <noscript>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css" />
    </noscript>
</head>

<body data-page="page_home">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <div id="sidebar_menu">
            <button class="btn btn-radius btn-sm btn-secondary toggle-sidebar"><i class="fas fa-angle-left mr-2"></i>Close menu</button>


            <li class="nav-item">
                <a class="nav-link" href="<?= base_url('/admin'); ?>">
                    <h4><i class="fas fa-user-shield"></i> Admin</h4>
                </a>
            </li>

            <?php
            $menuItems = array(
                //array('anime-add', 'fas fa-film', 'Anime Add'),
                array('getanime/$uid', 'fas fa-film', 'Get Anime Add'),
                array('getanimeupdate/$uid', 'fas fa-film', 'Get Anime Update'),
                array('season-add', 'fas fa-calendar', 'Season Add'),
                array('uploadfile', 'fas fa-file', 'UploadFile')
            );
            ?>
            <li class="nav-item">
                <a data-toggle="collapse" href="#anime" role="button" aria-expanded="false" aria-controls="anime">
                    <h6><i class="fas fa-book"></i> Anime</h6>
                </a>
                <div class="collapse" id="anime">
                    <ul class="nav flex-column pl-3">
                        <?php foreach ($menuItems as $item) : ?>
                            <?php if ($item[0] === 'getanime/$uid') : ?>
                                <li class="nav-item">
                                    <a class="nav-link" href="#" data-toggle="modal" data-target="#getanime-modal">
                                        <i class="<?= $item[1] ?>"></i> <?= ucfirst(str_replace('-', ' ', $item[2])); ?>
                                    </a>
                                </li>
                            <?php elseif ($item[0] === 'getanimeupdate/$uid') : ?>
                                <li class="nav-item">
                                    <a class="nav-link" href="#" data-toggle="modal" data-target="#getanimeupdate-modal">
                                        <i class="<?= $item[1] ?>"></i> <?= ucfirst(str_replace('-', ' ', $item[2])); ?>
                                    </a>
                                </li>
                            <?php else : ?>
                                <li class="nav-item">
                                    <a class="nav-link" href="<?= base_url('/admin/anime/' . $item[0]); ?>">
                                        <i class="<?= $item[1] ?>"></i> <?= ucfirst(str_replace('-', ' ', $item[2])); ?>
                                    </a>
                                </li>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    </ul>
                </div>
            </li>

            <?php
            $episodes = [
                'episode-add' => ['fas fa-video', 'Episode Add'],
                'episode-raw-add' => ['fas fa-file-video', 'Raw Add'],
                'episode-sub-add' => ['fas fa-closed-captioning', 'Subtitle Add'],
                'episode-dub-add' => ['fas fa-volume-up', 'Dub Add'],
                'episode-turk-add' => ['fas fa-file-video', 'Turkish Add'],
                'episode-download-add' => ['fas fa-file', 'Download Add']
            ];
            ?>

            <li class="nav-item">
                <a data-toggle="collapse" href="#episode" role="button" aria-expanded="false" aria-controls="episode">
                    <h6><i class="fas fa-tv"></i> Episode</h6>
                </a>
                <div class="collapse" id="episode">
                    <ul class="nav flex-column pl-3">
                        <?php foreach ($episodes as $uri => $details) :
                            $icon = $details[0];
                            $name = ucwords(str_replace('-', ' ', $details[1]));
                        ?>
                            <li class="nav-item">
                                <a class="nav-link" href="<?= base_url('/admin/episode/' . $uri); ?>">
                                    <i class="<?= $icon ?>"></i> <?= $name; ?>
                                </a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
            </li>

            <?php
            $anisettings = [
                ['reports', 'fas fa-chart-bar', 'Episode Report List'],
                ['postreport', 'fas fa-chart-bar', 'Comment Report List'],
                ['slider', 'fas fa-sliders-h', 'Sliders'],
                ['schedule', 'far fa-calendar-alt', 'Schedule'],
                ['websettings', 'fas fa-cog', 'WebSettings']
            ];
            ?>

            <li class="nav-item">
                <a data-toggle="collapse" href="#anisettings" role="button" aria-expanded="false" aria-controls="anisettings">
                    <h6><i class="fas fa-cog"></i> AniSettings</h6>
                </a>
                <div class="collapse" id="anisettings">
                    <ul class="nav flex-column pl-3">
                        <?php foreach ($anisettings as $link) : ?>
                            <li class="nav-item">
                                <a class="nav-link" href="<?= base_url('/admin/anisettings/' . $link[0]); ?>">
                                    <i class="<?= $link[1] ?>"></i> <?= ucwords(str_replace('-', ' ', $link[2])); ?>
                                </a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
            </li>


            <div class="clearfix"></div>
        </div>
        <div id="header" class="header-home ">
            <div class="container" style="max-width:100%!important;width:100%!important;">
                <div id="mobile_menu"><i class="fa fa-bars"></i></div>
                <a href="/home" id="logo" title="">
                    <img src="https://anitium.net/files/images/logo.png" width="100%" height="auto" alt="">
                    <div class="clearfix"></div>
                </a>
                <?php if (auth()->user()) : ?>
                    <div id="header_right">
                        <div id="user-slot">
                            <div class="header_right-user logged">
                                <div class="dropdown">
                                    <div class="btn-user-avatar" data-toggle="dropdown" aria-expanded="false" aria-controls="user_menu">
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
                                            "Profile" => "/user/$username",
                                        ];
                                        ?>
                                        <div class="grid-menu">
                                            <?php foreach ($urls as $name => $url) { ?>
                                                <a class="dropdown-item" href="<?= $url ?>"><i class="<?php
                                                                                                        switch ($name) {
                                                                                                            case 'Profile':
                                                                                                                echo 'fas fa-user mr-2';
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
                                    <div class="btn-user-avatar" data-toggle="dropdown" aria-expanded="false" aria-controls="user_menu">
                                        <p align="center"><i class="fa-solid fa-user"></i><br>Login</p>
                                    </div>
                                    <div id="user_menu" class="dropdown-menu dropdown-menu-right">
                                        <div class="dropdown-item dropdown-item-user">
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="grid-menu">
                                            <div class="grid-menu">
                                                <form action="<?= url_to('login') ?>" method="post">
                                                    <?= csrf_field() ?>
                                                    <div class="mb-2">
                                                        <input type="email" class="form-control" name="email" inputmode="email" autocomplete="email" placeholder="<?= lang('Auth.email') ?>" value="<?= old('email') ?>" required />
                                                    </div>
                                                    <div class="mb-2">
                                                        <input type="password" class="form-control" name="password" inputmode="text" autocomplete="current-password" placeholder="<?= lang('Auth.password') ?>" required />
                                                    </div>
                                                    <?php if (setting('Auth.sessionConfig')['allowRemembering']) : ?>
                                                        <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input type="checkbox" name="remember" class="form-check-input" <?php if (old('remember')) : ?> checked<?php endif ?>>
                                                                <?= lang('Auth.rememberMe') ?>
                                                            </label>
                                                        </div>
                                                    <?php endif; ?>
                                                    <div class="d-grid col-12 col-md-8 mx-auto m-3">
                                                        <button type="submit" class="btn btn-primary btn-block"><?= lang('Auth.login') ?></button>
                                                    </div>
                                                    <?php if (setting('Auth.allowRegistration')) : ?>
                                                        <p class="text-center"><?= lang('Auth.needAccount') ?> <a href="../user/register"><?= lang('Auth.register') ?></a></p>
                                                    <?php endif ?>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endif ?>
                <div id="mobile_search" class=""><i class="fa fa-search"></i></div>
                <div class="clearfix"></div>
            </div>
        </div>

        <div class="modal fade" id="getanime-modal" tabindex="-1" role="dialog" aria-labelledby="getanime-modalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <form action="<?= base_url('/admin/anime/getanime/'); ?>" method="get">
                            <div class="modal-header">
                                <h5 class="modal-title" id="getanime-modalLabel">Enter Anime ID</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <input type="text" name="uid" class="form-control" required>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Get Anime</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="getanimeupdate-modal" tabindex="-1" role="dialog" aria-labelledby="getanimeupdate-modalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <form action="<?= base_url('/admin/anime/getanimeupdate/'); ?>" method="get">
                            <div class="modal-header">
                                <h5 class="modal-title" id="getanimeupdate-modalLabel">Enter Anime ID</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <input type="text" name="uid" class="form-control" required>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Get Anime Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>