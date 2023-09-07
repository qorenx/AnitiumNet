<?= $this->include('anime/extend/templates/header') ?>
<?= $this->include('anime/extend/templates/head') ?>

<body>
    <div id="wrapper">
        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page">
            <div class="container" style="max-width:100%!important;width:100%!important;">
                <?= $this->include('anime/extend/templates/sidenav') ?>
                <div id="main-content">
                    <section class="block_area block_area_category">
                        <div id="filter-block">
                            <button id="toggle-filter" class="btn btn-radius btn-sm btn-secondary"><i class="fas fa-plus-circle mr-2"></i>Advanced search
                            </button>
                            <div class="block_area-header block_area-header-tabs">
                                <?php if (!empty($results)) : ?>

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
                                        <?php foreach ($results as $anime) : ?>
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
                                                    <a href="anime/<?php echo $anime['uid'] ?>/<?php echo str_replace(' ', '-', $anime['ani_name']); ?>" class="film-poster-ahref" data-id="<?php echo $anime['uid'] ?>"><i class="fas fa-play"></i></a>
                                                </div>
                                                <div class="film-detail">
                                                    <h3 class="film-name"><a href="anime/<?php echo $anime['uid'] ?>/<?php echo str_replace(' ', '-', $anime['ani_name']); ?>" class="dynamic-name">
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
                                    <?php endif; ?>
                                    </div>
                                    <div class="clearfix"></div>
                                    <?= $pager->links() ?>
                                </div>
                            </div>
                    </section>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
</body>

<div class="clearfix"></div>
</div>
</div>
<?= $this->include('anime/extend/templates/footer') ?>
<div id="mask-overlay"></div>
<?= $this->include('anime/loadscript') ?>
<script type="text/javascript">
    $(".btn-server").click(function() {
        $(".btn-server").removeClass("active");
        $(this).closest(".btn-server").addClass("active");
    });
</script>
</div>
</body>

</html>