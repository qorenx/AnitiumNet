<?= $this->include('anime/templates/header') ?>

<body data-page="page_home" style="background-image: url('<?= $getuserdata->profil_header ?>'); background-attachment: fixed;">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('anime/templates/head') ?>
        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page layout-award">
            <div class="container">



                <div class="block_area my-watchlist-full">
                    <div class="block_area-header mb-4">
                        <div class="float-left bah-heading">
                            <h2 class="cat-heading mb-0">Watch List of <?= $getuserdata->username ?></h2>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="fav-tabs mb-4">
                        <ul class="nav nav-tabs pre-tabs pre-tabs-min">
                            <li class="nav-item"> <a class="nav-link" id="all-btn" data-status="0" href="<?php echo base_url(); ?>community/u/<?= $getuserdata->username ?>/type=0">All</a></li>
                            <li class="nav-item"> <a class="nav-link" id="watching-btn" data-status="1" href="<?php echo base_url(); ?>community/u/<?= $getuserdata->username ?>/type=1">Watching</a></li>
                            <li class="nav-item"> <a class="nav-link" id="onhold-btn" data-status="2" href="<?php echo base_url(); ?>community/u/<?= $getuserdata->username ?>/type=2">On-Hold</a></li>
                            <li class="nav-item"> <a class="nav-link" id="plan-to-watch-btn" data-status="3" href="<?php echo base_url(); ?>community/u/<?= $getuserdata->username ?>/type=3">Plan-to-Watch</a></li>
                            <li class="nav-item"> <a class="nav-link" id="dropped-btn" data-status="4" href="<?php echo base_url(); ?>community/u/<?= $getuserdata->username ?>/type=4">Dropped</a></li>
                            <li class="nav-item"> <a class="nav-link" id="completed-btn" data-status="5" href="<?php echo base_url(); ?>community/u/<?= $getuserdata->username ?>/type=5">Completed</a></li>
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
                        <div style="background-color: #00000094;" class="pre-pagination mt-5 mb-5">
                            <nav aria-label="Page navigation">
                                <ul class="pagination pagination-lg justify-content-center">
                                    <ul class="ulclear az-list">
                                        <?php if ($pager) : ?>
                                            <?= $pager->links() ?>
                                        <?php endif ?>
                                    </ul>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>



            </div>
        </div>

        <div id="mask-overlay"></div>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js">
        </script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/js-cookie@rc/dist/js.cookie.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>files/js/app.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>files/js/comman.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>files/js/movie.js"></script>
        <link rel="stylesheet" href="<?php echo base_url(); ?>files/css/jquery-ui.css">
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>files/js/function.js"></script>
    </div>
    </div>
</body>

</html>