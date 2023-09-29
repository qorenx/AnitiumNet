<?= $this->include('Frontend/İnclude/Header') ?>


<body data-page="page_anime">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('Frontend/İnclude/Head') ?>

        <div class="clearfix"></div>
        <div id="main-wrapper">
            <div class="container">
                <div id="main-content">
                    <section class="block_area block_area_home">
                        <div class="block_area-header">
                            <div class="float-left bah-heading mr-4">
                                <h2 class="cat-heading">Latest Episode</h2>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="tab-content">
                            <div class="block_area-content block_area-list film_list film_list-grid">
                                <div class="film_list-wrap">
                                    <?php foreach ($AnimeRecentlyUpdateData as $AnimeData) : ?>
                                        <div class="flw-item">
                                            <div class="film-poster">
                                                <?php
                                                $ratings = [
                                                    4 => 'R-17+',
                                                    5 => 'R+',
                                                    6 => 'Rx'
                                                ];

                                                if (isset($ratings[$AnimeData['ani_rate']])) {
                                                ?>
                                                    <div class="tick tick-rate">
                                                        <?php echo $ratings[$AnimeData['ani_rate']]; ?>
                                                    </div>
                                                <?php
                                                }
                                                ?>
                                                <div class="tick tick-eps"><?php echo $AnimeData['ep_id_name'] ?>/<?php echo $AnimeData['ani_ep'] ?></div>

                                                <div class="tick ltr">
                                                </div>
                                                <div class="tick rtl">
                                                    <?php if (auth()->user()->raw_status ?? 1 == 1) : ?>
                                                        <?php if (!empty($AnimeData['RAW'])) : ?>
                                                            <div class="tick-item tick-raw">
                                                                <?php if ($AnimeData['RAW'] == 1) { ?>
                                                                    <span style="font-size: 0.6rem;">RAW</span>
                                                                <?php } ?>
                                                            </div>
                                                        <?php endif; ?>
                                                    <?php endif; ?>
                                                    <?php if (auth()->user()->sub_status ?? 1 == 1) : ?>
                                                        <?php if (!empty($AnimeData['SUB'])) : ?>
                                                            <div class="tick-item tick-sub">
                                                                <?php if ($AnimeData['SUB'] == 1) { ?>
                                                                    <span style="font-size: 0.6rem;">SUB</span>
                                                                <?php } ?>
                                                            </div>
                                                        <?php endif; ?>
                                                    <?php endif; ?>
                                                    <?php if (auth()->user()->dub_status ?? 1 == 1) : ?>
                                                        <?php if (!empty($AnimeData['DUB'])) : ?>
                                                            <div class="tick-item tick-dub">
                                                                <?php if ($AnimeData['DUB'] == 1) { ?>
                                                                    <span style="font-size: 0.6rem;">DUB</span>
                                                                <?php } ?>
                                                            </div>
                                                        <?php endif; ?>
                                                    <?php endif; ?>
                                                    <?php if (auth()->user()->turk_status ?? 1 == 1) : ?>
                                                        <?php if (!empty($AnimeData['TURK'])) : ?>
                                                            <div class="tick-item tick-turk">
                                                                <?php if ($AnimeData['TURK'] == 1) { ?>
                                                                    <span style="font-size: 0.6rem;">TURK</span>
                                                                <?php } ?>
                                                            </div>
                                                        <?php endif; ?>
                                                    <?php endif; ?>
                                                </div>
                                                <img data-src="<?php echo $AnimeData['ani_poster'] ?>" class="film-poster-img ls-is-cached lazyloaded" src="<?php echo $AnimeData['ani_poster'] ?>">
                                                <a href="/watch?anime=<?php
                                                                        $slug = trim(preg_replace("/[^\w\s\-]+/", "", $AnimeData['ani_name']), " ");
                                                                        $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                        $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                        $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                        $slug = ucfirst($slug);
                                                                        echo $slug;
                                                                        ?>&uid=<?= $AnimeData['uid'] ?>&eps=<?= $AnimeData['ep_id_name'] ?>" class="film-poster-ahref" data-id="<?php echo $AnimeData['uid'] ?>"><i class="fas fa-play"></i></a>
                                            </div>
                                            <div class="film-detail">
                                                <h3 class="film-name"><a href="/anime/<?php echo $AnimeData['uid'] ?>/<?php
                                                                                                                    $slug = trim(preg_replace("/[^\w\s\-]+/", "", $AnimeData['ani_name']), " ");
                                                                                                                    $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                                                    $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                                                    $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                                                    $slug = ucfirst($slug);
                                                                                                                    echo $slug;
                                                                                                                    ?>" class="dynamic-name"><?php echo $AnimeData['ani_name'] ?></a></h3>
                                                <div class="fd-infor">
                                                    <span class="fdi-item"><?php $aniType = [1 => 'TV', 2 => 'Movie', 3 => 'Ova', 4 => 'Ona', 5 => 'Special'];
                                                                            echo $aniType[$AnimeData['ani_type']] ?? ''; ?></span>
                                                    <span class="dot"></span>
                                                    <span class="fdi-item fdi-duration"><?php echo $AnimeData['ani_time'] ?></span>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    <?php endforeach; ?>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </section>
                    <div class="clearfix"></div>
                </div>
                <?= $this->include('Frontend/İnclude/SideBar') ?>
                <div class="clearfix"></div>
            </div>
        </div>
        <?= $this->include('Frontend/İnclude/Footer') ?>
        <div id="mask-overlay"></div>
        <?= $this->include('Frontend/İnclude/LoadScript') ?>
    </div>
</body>

</html>