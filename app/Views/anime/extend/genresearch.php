<?= $this->include('anime/extend/templates/header') ?>
<?= $this->include('anime/extend/templates/head') ?>

<body data-page="page_anime">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <div class="clearfix"></div>
        <div id="main-wrapper">
            <div class="container" style="max-width:100%!important;width:100%!important;">
                <div id="main-content">
                    <section class="block_area block_area_category">
                        <div class="block_area-header">
                            <div class="float-left bah-heading mr-4">
                                <h2 class="cat-heading"><?= strtoupper($genresearch) ?></h2>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="tab-content">
                            <div class="block_area-content block_area-list film_list film_list-grid film_list-wfeature">
                                <div class="film_list-wrap">
                                    <?php foreach (array_slice($animetv, 0, 4) as $anime) : ?>
                                        <div class="flw-item flw-item-big">
                                            <div class="film-poster">
                                                <div class="tick ltr">
                                                    <div class="tick-item tick-score"><?= $anime['ani_ep']; ?></div>
                                                </div>
                                                <?php if (!empty($anime['ani_score'])) : ?>
                                                    <div class="tick tick-rate"><?php
                                                                                $ratings = [
                                                                                    1 => 'G',
                                                                                    2 => 'PG',
                                                                                    3 => 'PG-13',
                                                                                    4 => 'R',
                                                                                    5 => 'Rx'
                                                                                ];

                                                                                echo $ratings[$anime['ani_rate']] ?? '';
                                                                                ?>
                                                    </div>
                                                <?php endif; ?>
                                                <img class="film-poster-img lazyload" src="<?= $anime['ani_poster'] ?>">
                                                <a class="film-poster-ahref" data-id="<?php echo $anime['uid'] ?>" href="/anime/<?= $anime['uid'] ?>/<?php
                                                                                                                                                        $nameParts = explode(',', $anime['ani_name'], 2);
                                                                                                                                                        if (count($nameParts) > 1) {
                                                                                                                                                            $name = trim($nameParts[1]);
                                                                                                                                                        } else {
                                                                                                                                                            $name = $anime['ani_name'];
                                                                                                                                                        }
                                                                                                                                                        $slug = strtolower(str_replace(' ', '-', implode(' ', array_slice(explode(' ', preg_replace('/[\/*!\^%&\/()=?.:",]/', '', $name)), 0, 10))));
                                                                                                                                                        echo $slug;
                                                                                                                                                        ?>"><i class="fas fa-play"></i></a>
                                            </div>
                                            <div class="film-detail">
                                                <h3 class="film-name"><a href="/anime/<?= $anime['uid'] ?>/<?php
                                                                                                            $nameParts = explode(',', $anime['ani_name'], 2);
                                                                                                            if (count($nameParts) > 1) {
                                                                                                                $name = trim($nameParts[1]);
                                                                                                            } else {
                                                                                                                $name = $anime['ani_name'];
                                                                                                            }
                                                                                                            $slug = strtolower(str_replace(' ', '-', implode(' ', array_slice(explode(' ', preg_replace('/[\/*!\^%&\/()=?.:",]/', '', $name)), 0, 10))));
                                                                                                            echo $slug;
                                                                                                            ?>" class="dynamic-name"><?= $anime['ani_name'] ?></a></h3>
                                                <div class="description">
                                                    <?= $anime['ani_synopsis'] ?>
                                                </div>
                                                <div class="fd-infor">
                                                    <span class="fdi-item"><?php
                                                                            if ($anime['ani_type'] == 1) {
                                                                                echo "TV";
                                                                            } elseif ($anime['ani_type'] == 2) {
                                                                                echo "Movie";
                                                                            } elseif ($anime['ani_type'] == 3) {
                                                                                echo "Ova";
                                                                            } elseif ($anime['ani_type'] == 4) {
                                                                                echo "Ona";
                                                                            } elseif ($anime['ani_type'] == 5) {
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
                                                                                        echo $seasons[$anime['ani_release_season']] ?? 'Unknown';
                                                                                        ?> <?= $anime['ani_release'] ?></span>
                                                    <span class="dot"></span>
                                                    <span class="fdi-item"><?= $anime['ani_score']; ?></span>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    <?php endforeach; ?>
                                    <?php foreach (array_slice($animetv, 4, 30) as $anime) : ?>
                                        <div class="flw-item">
                                            <div class="film-poster">
                                                <div class="tick tick-rate"><?php
                                                                            $ratings = [
                                                                                1 => 'G',
                                                                                2 => 'PG',
                                                                                3 => 'PG-13',
                                                                                4 => 'R-17+',
                                                                                5 => 'R+',
                                                                                6 => 'Rx'
                                                                            ];

                                                                            echo $ratings[$anime['ani_rate']] ?? '';
                                                                            ?></div>
                                                <div class="tick tick-eps"><?php echo $anime['ani_ep'] ?></div>
                                                <div class="tick ltr">
                                                </div>
                                                <div class="tick rtl">
                                                    <?php if (!empty($anime['ani_score'])) : ?>
                                                        <div class="tick-item"><?= $anime['ani_score']; ?></div>
                                                    <?php endif; ?>
                                                </div>
                                                <img class="film-poster-img ls-is-cached lazyloaded" src="<?php echo $anime['ani_poster'] ?>">
                                                <a href="anime/<?php echo $anime['uid'] ?>/<?php
                                                                                            $nameParts = explode(',', $anime['ani_name'], 2);
                                                                                            if (count($nameParts) > 1) {
                                                                                                $name = trim($nameParts[1]);
                                                                                            } else {
                                                                                                $name = $anime['ani_name'];
                                                                                            }
                                                                                            $slug = strtolower(str_replace(' ', '-', implode(' ', array_slice(explode(' ', preg_replace('/[\/*!\^%&\/()=?.:",]/', '', $name)), 0, 10))));
                                                                                            echo $slug;
                                                                                            ?>" class="film-poster-ahref" data-id="<?php echo $anime['uid'] ?>"><i class="fas fa-play"></i></a>
                                            </div>
                                            <div class="film-detail">
                                                <h3 class="film-name"><a href="anime/<?php echo $anime['uid'] ?>/<?php
                                                                                                                    $nameParts = explode(',', $anime['ani_name'], 2);
                                                                                                                    if (count($nameParts) > 1) {
                                                                                                                        $name = trim($nameParts[1]);
                                                                                                                    } else {
                                                                                                                        $name = $anime['ani_name'];
                                                                                                                    }
                                                                                                                    $slug = strtolower(str_replace(' ', '-', implode(' ', array_slice(explode(' ', preg_replace('/[\/*!\^%&\/()=?.:",]/', '', $name)), 0, 10))));
                                                                                                                    echo $slug;
                                                                                                                    ?>" class="dynamic-name">
                                                        <?php echo $anime['ani_name'] ?>
                                                    </a></h3>
                                                <div class="fd-infor">
                                                    <span class="fdi-item">
                                                        <?php
                                                        if ($anime['ani_type'] == 1) {
                                                            echo "TV";
                                                        } elseif ($anime['ani_type'] == 2) {
                                                            echo "Movie";
                                                        } elseif ($anime['ani_type'] == 3) {
                                                            echo "Ova";
                                                        } elseif ($anime['ani_type'] == 4) {
                                                            echo "Ona";
                                                        } elseif ($anime['ani_type'] == 5) {
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
                                                        echo $seasons[$anime['ani_release_season']] ?? 'Unknown';
                                                        ?> <?php echo $anime['ani_release'] ?>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    <?php endforeach; ?>
                                </div>
                                <div class="clearfix"></div>
                                <?php if ($pager) : ?>
                                    <?= $pager->links() ?>
                                <?php endif ?>
                            </div>
                        </div>
                    </section>

                    <div class="clearfix"></div>
                </div>
                <?= $this->include('anime/extend/templates/sidenav') ?>
                <div class="clearfix"></div>
            </div>
        </div>
        <?= $this->include('anime/extend/templates/footer') ?>
        <div id="mask-overlay"></div>
        <?= $this->include('anime/loadscript') ?>
    </div>
</body>

</html>