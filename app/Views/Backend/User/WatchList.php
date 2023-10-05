<?= $this->include('Frontend/İnclude/Header') ?>

<body data-page="page_home">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('Frontend/İnclude/Head') ?>
        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page layout-profile">
            <div class="profile-header">
                <div class="profile-header-cover"></div>
                <div class="container">
                    <div class="ph-title">Hi, <?= auth()->user()->username ?></div>
                    <div class="ph-tabs">
                        <div class="bah-tabs">
                            <ul class="nav nav-tabs pre-tabs" style="display: flex;">
                                <li><a style="cursor: pointer;" class="nav-link" onclick="window.location.href='/user/profile'"><i class="fas fa-user mr-2"></i>Profile</a></li>
                                <li><a style="cursor: pointer;" class="nav-link active" onclick="window.location.href='/user/profile/status/favorite'"><i class="fas fa-heart mr-2"></i>Watch List</a></li>
                                <li><a style="cursor: pointer;" class="nav-link" onclick="window.location.href='/user/profile/settings'"><i class="fas fa-cog mr-2"></i>Settings</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!--/End: Profile Header-->
            <div class="profile-content">
                <div class="container" style="max-width:100%!important;width:100%!important;">
                    <div class="profile-box profile-list profile-list-fav">
                        <div class="d-flex justify-content-between align-items-center mb-4">
                            <h2 class="h2-heading mb-4"><i class="fas fa-heart mr-3"></i>Watch List</h2>
                        </div>
                        <div class="fav-tabs mb-4">
                            <ul class="nav nav-tabs pre-tabs pre-tabs-min">
                                <li class="nav-item"> <a style="cursor: pointer;" class="nav-link" id="favorite-btn" data-status="1" onclick="location.href='<?php echo base_url(); ?>user/profile/status/favorite'"><i class="fas fa-heart"></i> Favorite</a></li>
                                <li class="nav-item"> <a style="cursor: pointer;" class="nav-link" id="watching-btn" data-status="2" onclick="location.href='<?php echo base_url(); ?>user/profile/status/watching'"><i class="fas fa-eye"></i> Watching</a></li>
                                <li class="nav-item"> <a style="cursor: pointer;" class="nav-link" id="onhold-btn" data-status="3" onclick="location.href='<?php echo base_url(); ?>user/profile/status/on-hold'"><i class="fas fa-pause"></i> On-Hold</a></li>
                                <li class="nav-item"> <a style="cursor: pointer;" class="nav-link" id="plan-to-watch-btn" data-status="4" onclick="location.href='<?php echo base_url(); ?>user/profile/status/plan-to-watch'"><i class="fas fa-clock"></i> Plan-to-Watch</a></li>
                                <li class="nav-item"> <a style="cursor: pointer;" class="nav-link" id="dropped-btn" data-status="5" onclick="location.href='<?php echo base_url(); ?>user/profile/status/dropped'"><i class="fas fa-times"></i> Dropped</a></li>
                                <li class="nav-item"> <a style="cursor: pointer;" class="nav-link" id="completed-btn" data-status="6" onclick="location.href='<?php echo base_url(); ?>user/profile/status/completed'"><i class="fas fa-check"></i> Completed</a></li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <!--Begin: Section film list-->
                        <div class="block_area-content block_area-list film_list film_list-grid">
                            <div class="film_list-wrap">
                                <?php if (!empty($anime_status)) : ?>
                                    <?php foreach ($anime_status as $value) : ?>
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
                                                <a class="film-poster-ahref" data-id="<?php echo $value['uid'] ?>" href="<?= base_url('anime/' . $value['uid'] . '/') ?><?php
                                                                                                                                                                        $slug = trim(preg_replace("/[^\w\s\-]+/", "", $value['ani_name']), " ");
                                                                                                                                                                        $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                                                                                                        $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                                                                                                        $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                                                                                                        $slug = ucfirst($slug);
                                                                                                                                                                        echo $slug;
                                                                                                                                                                        ?>"><i class="fas fa-play"></i></a>
                                            </div>
                                            <div class="film-detail">
                                                <h3 class="film-name"><a href="<?= base_url('anime/' . $value['uid'] . '/') ?><?php
                                                                                                                                $slug = trim(preg_replace("/[^\w\s\-]+/", "", $value['ani_name']), " ");
                                                                                                                                $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                                                                $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                                                                $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                                                                $slug = ucfirst($slug);
                                                                                                                                echo $slug;
                                                                                                                                ?>" class="dynamic-name"><?= $value['ani_name'] ?></a></h3>
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
                            <div class="pre-pagination mt-5 mb-5">
                                <nav aria-label="Page navigation">
                                    <ul class="pagination pagination-lg justify-content-center">
                                        <ul class="ulclear az-list">
                                            <?php
                                            $pagerLinks = service('pager');
                                            echo $pagerLinks->makeLinks($pager['currentPage'], $pager['itemsPerPage'], $pager['totalItems']);
                                            ?>
                                        </ul>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <!--End: Section film list-->
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div id="mask-overlay"></div>
        <?= $this->include('Frontend/İnclude/LoadScript') ?>
    </div>
</body>