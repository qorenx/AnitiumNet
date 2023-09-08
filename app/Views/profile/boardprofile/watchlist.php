<?= $this->include('profile/extend/header') ?>

<body data-page="page_home">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('anime/extend/templates/head') ?>
        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page layout-award">
            <div class="award-bg" style="z-index: -9999;">
                <div class="award-bg-img" style="background-image: url(/files/images/cover.png);"></div>
            </div>
            <div class="container">
                <div class="ai-control">
                    <div class="aic-left">
                        <a href="/community/user/<?= $getuserdata->username ?>"><i class="fas fa-angle-left mr-2"></i>Back</a>
                    </div>
                </div>
                <div class="block_area my-watchlist-full">
                    <div class="block_area-header mb-4">
                        <div class="float-left bah-heading">
                            <h2 class="cat-heading mb-0">Watch List of <?= $getuserdata->username ?></h2>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="fav-tabs mb-4">
                        <ul class="nav nav-tabs pre-tabs pre-tabs-min">
                            <li class="nav-item">
                                <a class="nav-link" id="all-btn" href="<?php echo base_url(); ?>community/user/<?= $getuserdata->username ?>/all">
                                    <i class="fas fa-globe"></i> All
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="favorite-btn" href="<?php echo base_url(); ?>community/user/<?= $getuserdata->username ?>/favorite">
                                    <i class="fas fa-heart"></i> Favorite
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="watching-btn" href="<?php echo base_url(); ?>community/user/<?= $getuserdata->username ?>/watching">
                                    <i class="fas fa-eye"></i> Watching
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="onhold-btn" href="<?php echo base_url(); ?>community/user/<?= $getuserdata->username ?>/on-hold">
                                    <i class="fas fa-pause"></i> On-Hold
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="plan-to-watch-btn" href="<?php echo base_url(); ?>community/user/<?= $getuserdata->username ?>/plan-to-watch">
                                    <i class="fas fa-clock"></i> Plan-to-Watch
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="dropped-btn" href="<?php echo base_url(); ?>community/user/<?= $getuserdata->username ?>/dropped">
                                    <i class="fas fa-times"></i> Dropped
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="completed-btn" href="<?php echo base_url(); ?>community/user/<?= $getuserdata->username ?>/completed">
                                    <i class="fas fa-check"></i> Completed
                                </a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="block_area-content block_area-list film_list film_list-grid">
                        <div class="film_list-wrap">

                            <?php if (!empty($anistatus)) : ?>
                                <?php foreach ($anistatus as $value) : ?>
                                    <div class="flw-item">
                                        <div class="film-poster">
                                            <div class="tick tick-rate"><?php
                                                                        $ratings = [
                                                                            1 => 'G',
                                                                            2 => 'PG',
                                                                            3 => 'PG-13',
                                                                            4 => 'R',
                                                                            5 => 'Rx'
                                                                        ];

                                                                        echo $ratings[$value['ani_rate']] ?? '';
                                                                        ?></div>
                                            <div class="tick ltr">
                                                <div class="tick-item tick-eps"><?= $value['ani_ep'] ?></div>
                                            </div>
                                            <img class="film-poster-img lazyloaded" src="<?= $value['ani_poster'] ?>">
                                            <a href="<?= base_url('anime/' . $value['uid'] . '/' . str_replace(' ', '-', $value['ani_name'])) ?>" class="film-poster-ahref"><i class="fas fa-play"></i></a>
                                        </div>
                                        <div class="film-detail">
                                            <h3 class="film-name"><a href="<?= base_url('anime/' . $value['uid'] . '/' . str_replace(' ', '-', $value['ani_name'])) ?>" class="dynamic-name"><?= $value['ani_name'] ?></a></h3>
                                            <div class="fd-infor">
                                                <span class="fdi-item"><?php
                                                                        if ($value['ani_type'] == 1) {
                                                                            echo "TV";
                                                                        } elseif ($value['ani_type'] == 2) {
                                                                            echo "Movie";
                                                                        } elseif ($value['ani_type'] == 3) {
                                                                            echo "Ova";
                                                                        } elseif ($value['ani_type'] == 4) {
                                                                            echo "Ona";
                                                                        } elseif ($value['ani_type'] == 5) {
                                                                            echo "Special";
                                                                        }
                                                                        ?></span>
                                                <span class="dot"></span>
                                                <span class="fdi-item fdi-duration"><?= ($value['ani_source'] == 1) ? "Manga" : (($value['ani_source'] == 2) ? "LightNovel" : "Other") ?></span>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                <?php endforeach; ?>
                            <?php endif; ?>


                        </div>
                        <div class="clearfix"></div>

                        <?php if ($pager) : ?>
                            <?= $pager->links() ?>
                        <?php endif ?>

                    </div>
                </div>
            </div>
        </div>
        <?= $this->include('profile/extend/footer') ?>
        <div id="mask-overlay"></div>
        <?= $this->include('anime/loadscript') ?>

    </div>
    </div>
</body>

</html>