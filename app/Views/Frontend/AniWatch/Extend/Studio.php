<?= $this->include('Frontend/AniWatch/İnclude/Header') ?>


<body data-page="page_anime">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('Frontend/AniWatch/İnclude/Head') ?>

        <div class="clearfix"></div>
        <div id="main-wrapper">
            <div class="container">
                <div id="main-content">
                    <section class="block_area block_area_category">
                        <div class="block_area-header">
                            <div class="float-left bah-heading mr-4">
                                <h2 class="cat-heading"><?= strtoupper($StudioName) ?></h2>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="tab-content">
                            <div class="block_area-content block_area-list film_list film_list-grid film_list-wfeature">
                                <div class="film_list-wrap">
                                    <?php foreach (array_slice($AnimeStudioData, 0, 4) as $AnimeData) : ?>
                                        <div class="flw-item flw-item-big">
                                            <div class="film-poster">
                                                <div class="tick ltr">
                                                    <div class="tick-item tick-score"><?= $AnimeData['ani_ep']; ?></div>
                                                </div>
                                                <?php if (!empty($AnimeData['ani_score'])) : ?>
                                                    <div class="tick tick-rate"><?php
                                                                                $ratings = [
                                                                                    1 => 'G',
                                                                                    2 => 'PG',
                                                                                    3 => 'PG-13',
                                                                                    4 => 'R-17+',
                                                                                    5 => 'R+',
                                                                                    6 => 'Rx'
                                                                                ];

                                                                                echo $ratings[$AnimeData['ani_rate']] ?? '';
                                                                                ?>
                                                    </div>
                                                <?php endif; ?>
                                                <img class="film-poster-img lazyload" src="<?= $AnimeData['ani_poster'] ?>">
                                                <a class="film-poster-ahref" data-id="<?php echo $AnimeData['uid'] ?>" href="/anime/<?= $AnimeData['uid'] ?>/<?php
                                                                                                                                                                $slug = trim(preg_replace("/[^\w\s\-]+/", "", $AnimeData['ani_name']), " ");
                                                                                                                                                                $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                                                                                                $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                                                                                                $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                                                                                                $slug = ucfirst($slug);
                                                                                                                                                                echo $slug;
                                                                                                                                                                ?>"><i class="fas fa-play"></i></a>
                                            </div>
                                            <div class="film-detail">
                                                <h3 class="film-name"><a href="/anime/<?= $AnimeData['uid'] ?>/<?php
                                                                                                                $slug = trim(preg_replace("/[^\w\s\-]+/", "", $AnimeData['ani_name']), " ");
                                                                                                                $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                                                $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                                                $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                                                $slug = ucfirst($slug);
                                                                                                                echo $slug;
                                                                                                                ?>" class="dynamic-name"><?= $AnimeData['ani_name'] ?></a></h3>
                                                <div class="description">
                                                    <?= $AnimeData['ani_synopsis'] ?>
                                                </div>
                                                <div class="fd-infor">
                                                    <span class="fdi-item"><?php
                                                                            if ($AnimeData['ani_type'] == 1) {
                                                                                echo "TV";
                                                                            } elseif ($AnimeData['ani_type'] == 2) {
                                                                                echo "Movie";
                                                                            } elseif ($AnimeData['ani_type'] == 3) {
                                                                                echo "Ova";
                                                                            } elseif ($AnimeData['ani_type'] == 4) {
                                                                                echo "Ona";
                                                                            } elseif ($AnimeData['ani_type'] == 5) {
                                                                                echo "Special";
                                                                            }
                                                                            ?></span>
                                                    <span class="dot"></span>
                                                    <span class="fdi-item fdi-duration"><?php
                                                                                        $seasons = [
                                                                                            1 => 'Winter',
                                                                                            2 => 'Spring',
                                                                                            3 => 'Summer',
                                                                                            4 => 'Fall'
                                                                                        ];
                                                                                        echo $seasons[$AnimeData['ani_release_season']] ?? 'Unknown';
                                                                                        ?> <?= $AnimeData['ani_release'] ?></span>
                                                    <span class="dot"></span>
                                                    <span class="fdi-item"><?= $AnimeData['ani_score']; ?></span>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    <?php endforeach; ?>
                                    <?php foreach (array_slice($AnimeStudioData, 4, 30) as $AnimeData) : ?>
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

                                                                            echo $ratings[$AnimeData['ani_rate']] ?? '';
                                                                            ?></div>
                                                <div class="tick tick-eps"><?php echo $AnimeData['ani_ep'] ?></div>
                                                <div class="tick ltr">
                                                </div>
                                                <div class="tick rtl">
                                                    <?php if (!empty($AnimeData['ani_score'])) : ?>
                                                        <div class="tick-item"><?= $AnimeData['ani_score']; ?></div>
                                                    <?php endif; ?>
                                                </div>
                                                <img class="film-poster-img ls-is-cached lazyloaded" src="<?php echo $AnimeData['ani_poster'] ?>">
                                                <a href="anime/<?php echo $AnimeData['uid'] ?>/<?php
                                                                                                $slug = trim(preg_replace("/[^\w\s\-]+/", "", $AnimeData['ani_name']), " ");
                                                                                                $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                                $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                                $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                                $slug = ucfirst($slug);
                                                                                                echo $slug;
                                                                                                ?>" class="film-poster-ahref" data-id="<?php echo $AnimeData['uid'] ?>"><i class="fas fa-play"></i></a>
                                            </div>
                                            <div class="film-detail">
                                                <h3 class="film-name"><a href="anime/<?php echo $AnimeData['uid'] ?>/<?php
                                                                                                                        $slug = trim(preg_replace("/[^\w\s\-]+/", "", $AnimeData['ani_name']), " ");
                                                                                                                        $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                                                        $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                                                        $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                                                        $slug = ucfirst($slug);
                                                                                                                        echo $slug;
                                                                                                                        ?>" class="dynamic-name">
                                                        <?php echo $AnimeData['ani_name'] ?>
                                                    </a></h3>
                                                <div class="fd-infor">
                                                    <span class="fdi-item">
                                                        <?php
                                                        if ($AnimeData['ani_type'] == 1) {
                                                            echo "TV";
                                                        } elseif ($AnimeData['ani_type'] == 2) {
                                                            echo "Movie";
                                                        } elseif ($AnimeData['ani_type'] == 3) {
                                                            echo "Ova";
                                                        } elseif ($AnimeData['ani_type'] == 4) {
                                                            echo "Ona";
                                                        } elseif ($AnimeData['ani_type'] == 5) {
                                                            echo "Special";
                                                        }
                                                        ?>
                                                    </span>
                                                    <span class="dot"></span>
                                                    <span class="fdi-item fdi-duration">
                                                        <?php
                                                        $seasons = [
                                                            1 => 'Winter',
                                                            2 => 'Spring',
                                                            3 => 'Summer',
                                                            4 => 'Fall'
                                                        ];
                                                        echo $seasons[$AnimeData['ani_release_season']] ?? 'Unknown';
                                                        ?> <?php echo $AnimeData['ani_release'] ?>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    <?php endforeach; ?>
                                </div>
                                <div class="clearfix"></div>
                                <?= $AnimeStudioPage->links() ?>
                            </div>
                        </div>
                    </section>

                    <div class="clearfix"></div>
                </div>
                <?= $this->include('Frontend/AniWatch/İnclude/SideBar') ?>
                <div class="clearfix"></div>
            </div>
        </div>
        <?= $this->include('Frontend/AniWatch/İnclude/Footer') ?>
        <div id="mask-overlay"></div>
        <?= $this->include('Frontend/AniWatch/İnclude/LoadScript') ?>
    </div>
</body>

</html>