<section class="block_area block_area_sidebar block_area-realtime">
    <div class="block_area-header">
        <div class="float-left bah-heading mr-2">
            <h2 class="cat-heading">Top Episode
            </h2>
        </div>
        <div class="float-right bah-tab-min">
            <ul class="nav nav-pills nav-fill nav-tabs anw-tabs">
                <li class="nav-item"><a data-toggle="tab" href="#top-viewed-today" class="nav-link active">Today</a></li>
                <li class="nav-item"><a data-toggle="tab" href="#top-viewed-week" class="nav-link">Week</a></li>
                <li class="nav-item"><a data-toggle="tab" href="#top-viewed-month" class="nav-link">Month</a></li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="block_area-content">
        <div class="cbox cbox-list cbox-realtime">
            <div class="cbox-content">
                <div class="tab-content">
                    <div id="top-viewed-today" class="anif-block-ul anif-block-chart tab-pane active">
                        <ul class="ulclear">
                            <?php $key = 1;
                            foreach ($EpisodeViewSideBarData['TodayData'] as $today) : ?>
                                <li class="item-top">
                                    <div class="film-number"><span><?= $key ?></span></div>
                                    <div class="film-poster item-qtip loaded">
                                        <img class="film-poster-img ls-is-cached lazyloaded" src="<?= $today['ani_poster'] ?>">
                                    </div>
                                    <div class="film-detail">
                                        <div class="film-name">
                                            <h7>
                                                <a href="anime/<?= $today['ep_uid'] ?>/<?php
                                                                                        $slug = trim(preg_replace("/[^\w\s\-]+/", "", $today['ani_name']), " ");
                                                                                        $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                        $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                        $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                        $slug = ucfirst($slug);
                                                                                        echo $slug;
                                                                                        ?>" class="dynamic-name"><?= $today['ani_name'] ?></a>
                                            </h7>
                                        </div>
                                        <div class="film-name">
                                            <a href="watch?anime=<?php
                                                                    $slug = trim(preg_replace("/[^\w\s\-]+/", "", $today['ani_name']), " ");
                                                                    $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                    $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                    $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                    $slug = ucfirst($slug);
                                                                    echo $slug;
                                                                    ?>&uid=<?= $today['ep_uid'] ?>&eps=<?= $today['ep_id'] ?>" class="dynamic-name">Episode-<?= $today['ep_id'] ?></a>
                                        </div>
                                        <div class="fd-infor">
                                            <div class="tick">
                                                <div class="tick-item tick-type"><?php
                                                                                    if ($today['ani_type'] == 1) {
                                                                                        echo "TV";
                                                                                    } elseif ($today['ani_type'] == 2) {
                                                                                        echo "Movie";
                                                                                    } elseif ($today['ani_type'] == 3) {
                                                                                        echo "Ova";
                                                                                    } elseif ($today['ani_type'] == 4) {
                                                                                        echo "Ona";
                                                                                    } elseif ($today['ani_type'] == 5) {
                                                                                        echo "Special";
                                                                                    }
                                                                                    ?></div>
                                                <div class="tick-item tick-score"><?= $today['ani_score'] ?></div>
                                                <span class="fdi-item ml-2"><i class="fas fa-eye mr-2"></i><?= $today['ep_today'] ?></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                            <?php $key++;
                            endforeach; ?>
                        </ul>
                    </div>
                    <div id="top-viewed-week" class="anif-block-ul anif-block-chart tab-pane">
                        <ul class="ulclear">
                            <?php $key = 1;
                            foreach ($EpisodeViewSideBarData['WeekyData']  as $weeky) : ?>
                                <li class="item-top">
                                    <div class="film-number"><span><?= $key ?></span></div>
                                    <div class="film-poster item-qtip loaded">
                                        <img class="film-poster-img ls-is-cached lazyloaded" src="<?= $weeky['ani_poster'] ?>">
                                    </div>
                                    <div class="film-detail">
                                        <div class="film-name">
                                            <h7>
                                                <a href="anime/<?= $weeky['ep_uid'] ?>/<?php
                                                                                        $slug = trim(preg_replace("/[^\w\s\-]+/", "", $weeky['ani_name']), " ");
                                                                                        $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                        $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                        $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                        $slug = ucfirst($slug);
                                                                                        echo $slug;
                                                                                        ?>" class="dynamic-name"><?= $weeky['ani_name'] ?></a>
                                            </h7>
                                        </div>
                                        <div class="film-name">
                                            <a href="watch?anime=<?php
                                                                    $slug = trim(preg_replace("/[^\w\s\-]+/", "", $weeky['ani_name']), " ");
                                                                    $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                    $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                    $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                    $slug = ucfirst($slug);
                                                                    echo $slug;
                                                                    ?>&uid=<?= $weeky['ep_uid'] ?>&eps=<?= $weeky['ep_id'] ?>" class="dynamic-name">Episode-<?= $weeky['ep_id'] ?></a>
                                        </div>
                                        <div class="fd-infor">
                                            <div class="tick">
                                                <div class="tick-item tick-type"><?php
                                                                                    if ($weeky['ani_type'] == 1) {
                                                                                        echo "TV";
                                                                                    } elseif ($weeky['ani_type'] == 2) {
                                                                                        echo "Movie";
                                                                                    } elseif ($weeky['ani_type'] == 3) {
                                                                                        echo "Ova";
                                                                                    } elseif ($weeky['ani_type'] == 4) {
                                                                                        echo "Ona";
                                                                                    } elseif ($weeky['ani_type'] == 5) {
                                                                                        echo "Special";
                                                                                    }
                                                                                    ?></div>
                                                <div class="tick-item tick-score"><?= $weeky['ani_score'] ?></div>
                                                <span class="fdi-item ml-2"><i class="fas fa-eye mr-2"></i><?= $weeky['ep_weeky'] ?></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                            <?php $key++;
                            endforeach; ?>
                        </ul>
                    </div>
                    <div id="top-viewed-month" class="anif-block-ul anif-block-chart tab-pane">
                        <ul class="ulclear">
                            <?php $key = 1;
                            foreach ($EpisodeViewSideBarData['MonthData'] as $month) : ?>
                                <li class="item-top">
                                    <div class="film-number"><span><?= $key ?></span></div>
                                    <div class="film-poster item-qtip loaded">
                                        <img class="film-poster-img ls-is-cached lazyloaded" src="<?= $month['ani_poster'] ?>">
                                    </div>
                                    <div class="film-detail">
                                        <div class="film-name">
                                            <h7>
                                                <a href="anime/<?= $month['ep_uid'] ?>/<?php
                                                                                        $slug = trim(preg_replace("/[^\w\s\-]+/", "", $month['ani_name']), " ");
                                                                                        $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                        $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                        $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                        $slug = ucfirst($slug);
                                                                                        echo $slug;
                                                                                        ?>" class="dynamic-name"><?= $month['ani_name'] ?></a>
                                            </h7>
                                        </div>
                                        <div class="film-name">
                                            <a href="watch?anime=<?php
                                                                    $slug = trim(preg_replace("/[^\w\s\-]+/", "", $month['ani_name']), " ");
                                                                    $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                    $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                    $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                    $slug = ucfirst($slug);
                                                                    echo $slug;
                                                                    ?>&uid=<?= $month['ep_uid'] ?>&eps=<?= $month['ep_id'] ?>" class="dynamic-name">Episode-<?= $month['ep_id'] ?></a>
                                        </div>
                                        <div class="fd-infor">
                                            <div class="tick">
                                                <div class="tick-item tick-type"><?php
                                                                                    if ($month['ani_type'] == 1) {
                                                                                        echo "TV";
                                                                                    } elseif ($month['ani_type'] == 2) {
                                                                                        echo "Movie";
                                                                                    } elseif ($month['ani_type'] == 3) {
                                                                                        echo "Ova";
                                                                                    } elseif ($month['ani_type'] == 4) {
                                                                                        echo "Ona";
                                                                                    } elseif ($month['ani_type'] == 5) {
                                                                                        echo "Special";
                                                                                    }
                                                                                    ?></div>
                                                <div class="tick-item tick-score"><?= $month['ani_score'] ?></div>
                                                <span class="fdi-item ml-2"><i class="fas fa-eye mr-2"></i><?= $month['ep_month'] ?></span>
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