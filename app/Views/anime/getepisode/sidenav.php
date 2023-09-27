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
                                                <a href="<?= base_url('anime/' . $topani['uid']) ?>/<?php
                                                                                                    $slug = trim(preg_replace("/[^\w\s\-]+/", "", $topani['ani_name']), " ");
                                                                                                    $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                                    $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                                    $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                                    $slug = ucfirst($slug);
                                                                                                    echo $slug;
                                                                                                    ?>" class="dynamic-name"><?= $topani['ani_name'] ?></a>
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
                                                <a href="<?= base_url('anime/' . $topani['uid']) ?>/<?php
                                                                                                        $slug = trim(preg_replace("/[^\w\s\-]+/", "", $topani['ani_name']), " ");
                                                                                                        $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                                        $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                                        $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                                        $slug = ucfirst($slug);
                                                                                                        echo $slug;
                                                                                                        ?>" class="dynamic-name"><?= $topani['ani_name'] ?></a>
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
                                                <a href="<?= base_url('anime/' . $topani['uid']) ?>/<?php
                                                                                                    $slug = trim(preg_replace("/[^\w\s\-]+/", "", $topani['ani_name']), " ");
                                                                                                    $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                                    $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                                    $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                                    $slug = ucfirst($slug);
                                                                                                    echo $slug;
                                                                                                    ?>" class="dynamic-name"><?= $topani['ani_name'] ?></a>
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
</div>