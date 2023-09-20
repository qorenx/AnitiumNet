<div id="main-sidebar">
    <section class="block_area block_area_sidebar block_area-realtime">
        <div class="block_area-header">
            <div class="float-left bah-heading mr-2">
                <h2 class="cat-heading">Top Anime</h2>
            </div>
            <div class="float-right bah-tab-min">
                <ul class="nav nav-pills nav-fill nav-tabs anw-tabs">
                    <li class="nav-item"><a data-toggle="tab" href="#today-anime" class="nav-link active">Today</a>
                    <li class="nav-item"><a data-toggle="tab" href="#month-anime" class="nav-link">Month</a>
                    <li class="nav-item"><a data-toggle="tab" href="#years-anime" class="nav-link">Years</a>
                    </li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="block_area-content">
            <div class="cbox cbox-list cbox-realtime">
                <div class="cbox-content">
                    <div class="tab-content">
                        <div id="today-anime" class="anif-block-ul anif-block-chart tab-pane active">
                            <ul class="ulclear">
                                <?php $key = 1;
                                foreach ($topanime as $topani) : ?>
                                    <li class="item-top">
                                        <div class="film-number"><span><?= $key ?></span></div>
                                        <div class="film-poster item-qtip loaded">
                                            <img class="film-poster-img ls-is-cached lazyloaded" src="<?= $topani['ani_poster'] ?>">
                                        </div>
                                        <div class="film-detail">
                                            <h3 class="film-name">
                                                <a href="<?= base_url('anime/' . $topani['uid'] . '/' . urlencode($topani['ani_name'])) ?>" class="dynamic-name"><?= $topani['ani_name'] ?></a>
                                            </h3>
                                            <div class="fd-infor">
                                                <div class="tick">
                                                    <div class="tick-item tick-type"><?php
                                                                                        if ($topani['ani_type'] == 1) {
                                                                                            echo "TV";
                                                                                        } elseif ($topani['ani_type'] == 2) {
                                                                                            echo "Movie";
                                                                                        } elseif ($topani['ani_type'] == 3) {
                                                                                            echo "Ova";
                                                                                        } elseif ($topani['ani_type'] == 4) {
                                                                                            echo "Ona";
                                                                                        } elseif ($topani['ani_type'] == 5) {
                                                                                            echo "Special";
                                                                                        }
                                                                                        ?></div>
                                                    <div class="tick-item tick-score"><?= $topani['ani_score'] ?></div>
                                                    <span class="fdi-item ml-2"><i class="fas fa-eye mr-2"></i><?= $topani['view_count'] ?></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </li>
                                <?php $key++;
                                endforeach; ?>
                            </ul>
                        </div>
                        <div id="month-anime" class="anif-block-ul anif-block-chart tab-pane">
                            <ul class="ulclear">
                                <?php $key = 1;
                                foreach ($topmonthanime as $topani) : ?>
                                    <li class="item-top">
                                        <div class="film-number"><span><?= $key ?></span></div>
                                        <div class="film-poster item-qtip loaded">
                                            <img class="film-poster-img ls-is-cached lazyloaded" src="<?= $topani['ani_poster'] ?>">
                                        </div>
                                        <div class="film-detail">
                                            <h3 class="film-name">
                                                <a href="<?= base_url('anime/' . $topani['uid'] . '/' . urlencode($topani['ani_name'])) ?>" class="dynamic-name"><?= $topani['ani_name'] ?></a>
                                            </h3>
                                            <div class="fd-infor">
                                                <div class="tick">
                                                    <div class="tick-item tick-type"><?php
                                                                                        if ($topani['ani_type'] == 1) {
                                                                                            echo "TV";
                                                                                        } elseif ($topani['ani_type'] == 2) {
                                                                                            echo "Movie";
                                                                                        } elseif ($topani['ani_type'] == 3) {
                                                                                            echo "Ova";
                                                                                        } elseif ($topani['ani_type'] == 4) {
                                                                                            echo "Ona";
                                                                                        } elseif ($topani['ani_type'] == 5) {
                                                                                            echo "Special";
                                                                                        }
                                                                                        ?></div>
                                                    <div class="tick-item tick-score"><?= $topani['ani_score'] ?></div>
                                                    <span class="fdi-item ml-2"><i class="fas fa-eye mr-2"></i><?= $topani['view_count_month'] ?></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </li>
                                <?php $key++;
                                endforeach; ?>
                            </ul>
                        </div>
                        <div id="years-anime" class="anif-block-ul anif-block-chart tab-pane">
                            <ul class="ulclear">
                                <?php $key = 1;
                                foreach ($topyearsanime as $topani) : ?>
                                    <li class="item-top">
                                        <div class="film-number"><span><?= $key ?></span></div>
                                        <div class="film-poster item-qtip loaded">
                                            <img class="film-poster-img ls-is-cached lazyloaded" src="<?= $topani['ani_poster'] ?>">
                                        </div>
                                        <div class="film-detail">
                                            <h3 class="film-name">
                                                <a href="<?= base_url('anime/' . $topani['uid'] . '/' . urlencode($topani['ani_name'])) ?>" class="dynamic-name"><?= $topani['ani_name'] ?></a>
                                            </h3>
                                            <div class="fd-infor">
                                                <div class="tick">
                                                    <div class="tick-item tick-type"><?php
                                                                                        if ($topani['ani_type'] == 1) {
                                                                                            echo "TV";
                                                                                        } elseif ($topani['ani_type'] == 2) {
                                                                                            echo "Movie";
                                                                                        } elseif ($topani['ani_type'] == 3) {
                                                                                            echo "Ova";
                                                                                        } elseif ($topani['ani_type'] == 4) {
                                                                                            echo "Ona";
                                                                                        } elseif ($topani['ani_type'] == 5) {
                                                                                            echo "Special";
                                                                                        }
                                                                                        ?></div>
                                                    <div class="tick-item tick-score"><?= $topani['ani_score'] ?></div>
                                                    <span class="fdi-item ml-2"><i class="fas fa-eye mr-2"></i><?= $topani['view_count_years'] ?></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </li>
                                <?php $key++;
                                endforeach; ?>
                            </ul>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </section>
    <section class="block_area block_area_sidebar block_area-genres">
        <div class="block_area-header">
            <div class="float-left bah-heading mr-4">
                <h2 class="cat-heading">Genres</h2>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="block_area-content">
            <div class="cbox cbox-genres">
                <ul class="ulclear color-list sb-genre-list sb-genre-less">
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/action" title="Action">Action</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/adventure" title="Adventure">Adventure</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/cars" title="Cars">Cars</a></li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/comedy" title="Comedy">Comedy</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/dementia" title="Dementia">Dementia</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/demons" title="Demons">Demons</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/drama" title="Drama">Drama</a></li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/ecchi" title="Ecchi">Ecchi</a></li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/fantasy" title="Fantasy">Fantasy</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/game" title="Game">Game</a></li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/harem" title="Harem">Harem</a></li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/historical" title="Historical">Historical</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/horror" title="Horror">Horror</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/josei" title="Josei">Josei</a></li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/kids" title="Kids">Kids</a></li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/magic" title="Magic">Magic</a></li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/martial+arts" title="Martial Arts">Martial Arts</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/mecha" title="Mecha">Mecha</a></li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/military" title="Military">Military</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/music" title="Music">Music</a></li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/mystery" title="Mystery">Mystery</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/parody" Title="Parody">Parody</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/police" title="Police">Police</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/psychological" title="Psychological">Psychological</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/romance" title="Romance">Romance</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/samurai" title="Samurai">Samurai</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/school" title="School">School</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/sci-fi" title="Sci Fi">Sci Fi</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/seinen" title="Seinen">Seinen</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/shoujo" title="Shoujo">Shoujo</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/shoujo+ai" title="Shoujo Ai">Shoujo Ai</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/shounen" title="Shounen">Shounen</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/shounen+Ai" title="Shounen Ai">Shounen Ai</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/slice+of+life" title="Slice of Life">Slice of Life</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/space" title="Space">Space</a></li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/sports" title="Sports">Sports</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/super+power" title="Super Power">Super Power</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/supernatural" title="Supernatural">Supernatural</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/thriller" title="Thriller">Thriller</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/vampire" title="Vampire">Vampire</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/yaoi" title="Yaoi">Yaoi</a></li>
                    <li class="nav-item"> <a class="nav-link" href="<?php echo base_url(); ?>genre/yuri" title="Yuri">Yuri</a></li>
                </ul>
                <div class="clearfix"></div>
                <button class="btn btn-sm btn-block btn-showmore mt-2"></button>
            </div>
        </div>
    </section>
</div>