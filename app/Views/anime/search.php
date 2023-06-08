<?= $this->include('anime/templates/header') ?>
<?= $this->include('anime/templates/head') ?>

<body>
    <div id="wrapper">
        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page">
            <div class="container" style="max-width:100%!important;width:100%!important;">
                <?= $this->include('anime/extendpage/sidenav') ?>
                <div id="main-content">
                    <section class="block_area block_area_category">
                        <div id="filter-block">
                            <button id="toggle-filter" class="btn btn-radius btn-sm btn-secondary"><i class="fas fa-plus-circle mr-2"></i>Advanced search
                            </button>
                            <div id="cate-filter" class="category_filter">
                                <div class="category_filter-content">
                                    <form method="get" id="filter-form">
                                        <input type="hidden" name="keyword" value="">
                                        <div class="cfc-min-block cfc-min-block-date">
                                            <div class="ni-head mb-3"><strong>Filter</strong></div>
                                            <div class="cmb-item cmb-type">
                                                <div class="ni-head">Type</div>
                                                <div class="nl-item">
                                                    <div class="nli-select">
                                                        <select class="custom-select" name="ani_type">
                                                            <option value="">All</option>
                                                            <option value="1">TV</option>
                                                            <option value="2">Movie</option>
                                                            <option value="3">OVA</option>
                                                            <option value="4">ONA</option>
                                                            <option value="5">Special</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="cmb-item cmb-type">
                                                <div class="ni-head">Country</div>
                                                <div class="nl-item">
                                                    <div class="nli-select">
                                                        <select class="custom-select" name="ani_country">
                                                            <option value="">All</option>
                                                            <option value="1">Japanese</option>
                                                            <option value="2">Chinese</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="cmb-item cmb-status">
                                                <div class="ni-head">Status</div>
                                                <div class="nl-item">
                                                    <div class="nli-select">
                                                        <select class="custom-select" name="ani_stats">
                                                            <option value="">All</option>
                                                            <option value="1">Currently Airing</option>
                                                            <option value="2">Finished Airing</option>
                                                            <option value="3">Not yet Aired</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="cmb-item">
                                                <div class="ni-head">Rate</div>
                                                <div class="nl-item">
                                                    <div class="nli-select">
                                                        <select class="custom-select" name="ani_rate">
                                                            <option value="">All</option>
                                                            <option value="1">G</option>
                                                            <option value="2">PG</option>
                                                            <option value="3">PG-13</option>
                                                            <option value="4">R</option>
                                                            <option value="5">Rx</option>

                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="cmb-item">
                                                <div class="ni-head">Source</div>
                                                <div class="nl-item">
                                                    <div class="nli-select">
                                                        <select class="custom-select" name="ani_source">
                                                            <option value="">All</option>
                                                            <option value="1">LightNovel</option>
                                                            <option value="2">Manga</option>
                                                            <option value="3">Other</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="cmb-item">
                                                <div class="ni-head">Season</div>
                                                <div class="nl-item">
                                                    <div class="nli-select">
                                                        <select class="custom-select" name="ani_release_season">
                                                            <option value="">All</option>
                                                            <option value="1">Spring</option>
                                                            <option value="2">Summer</option>
                                                            <option value="3">Fall</option>
                                                            <option value="4">Winter</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="cfc-min-block cfc-min-block-date">
                                            <div class="cmb-item cmb-date">
                                                <div class="ni-head mr-2">Airing Date</div>
                                                <div class="nl-item">
                                                    <div class="nli-select">
                                                        <select class="custom-select" name="ani_release">
                                                            <?php
                                                            $current_year = date("Y");
                                                            $start_year = 1917;
                                                            for ($i = $current_year; $i >= $start_year; $i--) {
                                                                echo '<option value="' . $i . '">' . $i . '</option>';
                                                            }
                                                            ?>
                                                        </select>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="cfc-button mt-4">
                                            <button class="btn btn-primary"><strong>Filter</strong></button>
                                            <div class="clearfix"></div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="block_area-header block_area-header-tabs">
                            <?php if (!empty($results)) : ?>

                                <div class="float-left bah-heading mr-4">
                                    <h2 class="cat-heading">Search results for:</h2>
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
                                                <div class="tick ltr">
                                                    <div class="tick-item tick-eps"><?php echo $anime['ani_ep']; ?></div>
                                                </div>
                                                <img data-src="<?php echo $anime['ani_poster']; ?>" class="film-poster-img lazyload">
                                                <a href="anime/<?php echo $anime['uid']; ?>/<?php echo str_replace(' ', '-', $anime['ani_name']); ?>" class="film-poster-ahref item-qtip" data-id="15892"><i class="fas fa-play"></i></a>
                                            </div>
                                            <div class="film-detail">
                                                <h3 class="film-name"><a href="anime/<?php echo $anime['uid']; ?>/<?php echo str_replace(' ', '-', $anime['ani_name']); ?>" class="dynamic-name"><?php echo $anime['ani_name']; ?></a></h3>
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
                                                                                        ?> <?php echo $anime['ani_release']; ?></span>
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
                                        <ul class="pagination pagination-lg justify-content-center"> </ul>
                                    </nav>
                                </div>
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
<?= $this->include('anime/templates/footer') ?>
<div id="mask-overlay"></div>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/js-cookie@rc/dist/js.cookie.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>files/js/app.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>files/js/comman.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>files/js/movie.js"></script>
<link rel="stylesheet" href="<?php echo base_url(); ?>files/css/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
    $(".btn-server").click(function() {
        $(".btn-server").removeClass("active");
        $(this).closest(".btn-server").addClass("active");
    });
</script>
</div>
</body>

</html>