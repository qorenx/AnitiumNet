<?= $this->include('Frontend/AniWatch/İnclude/Header') ?>

<body>
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper">
        <?= $this->include('Frontend/AniWatch/İnclude/Head') ?>
        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page">
            <div class="container">
                <section class="block_area block_area_category">
                    <div id="filter-block">
                        <button id="toggle-filter" class="btn btn-radius btn-sm btn-secondary"><i class="fas fa-plus-circle mr-2"></i>Advanced search
                        </button>
                        <div class="block_area-header block_area-header-tabs">
                            <?php if (!empty($SearchData)) : ?>

                                <div class="float-left bah-heading mr-4">
                                    <?php
                                    $keyword = isset($_GET['keyword']) ? htmlspecialchars($_GET['keyword']) : '';
                                    echo "<h2 class='cat-heading'>Search results for: $keyword</h2>";
                                    ?>
                                </div>
                                <div class="clearfix"></div>
                        </div>
                        <div class="tab-content">
                            <div class="block_area-content block_area-list film_list film_list-grid film_list-wfeature">
                                <div class="film_list-wrap">
                                    <?php foreach ($SearchData as $AnimeData) : ?>
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
                                <?php endif; ?>
                                </div>
                                <div class="clearfix"></div>
                                <?= $Page->links() ?>
                            </div>
                        </div>
                </section>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <div id="mask-overlay"></div>
    <?= $this->include('Frontend/AniWatch/İnclude/Footer') ?>
    <?= $this->include('Frontend/AniWatch/İnclude/LoadScript') ?>
</body>