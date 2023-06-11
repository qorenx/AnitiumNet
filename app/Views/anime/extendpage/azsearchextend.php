<section class="block_area block_area_category">
    <div class="block_area-header">
        <div class="float-left bah-heading mr-4">
            <h2 class="cat-heading"><?= strtoupper($azsearch) ?></h2>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="tab-content">
        <div class="block_area-content block_area-list film_list film_list-grid film_list-wfeature">
            <div class="film_list-wrap">
                <?php foreach (array_slice($animedata, 0, 4) as $anime) : ?>
                    <div class="flw-item flw-item-big">
                        <div class="film-poster">
                            <div class="tick ltr">
                                <div class="tick-item-sub tick-eps amp-algn">
                                    <?= $anime['ani_stats'] ?>
                                </div>
                                <div class="tick-item tick-eps"><?= $anime['ani_ep'] ?></div>
                            </div>
                            <div class="tick-item tick-eps amp-algn">
                                <?= $anime['uid'] ?>
                            </div>
                            <?php if (!empty($anime['ani_score'])) : ?>
                                <div class="tick tick-rate">
                                    <?= $anime['ani_score'] ?>
                                </div>
                            <?php endif; ?>
                            <img class="film-poster-img lazyload" data-src="<?= $anime['ani_poster'] ?>" src="<?= base_url(); ?>/files/images/no_poster.jpg" alt="">
                            <a class="film-poster-ahref" href="/anime/<?= $anime['uid'] ?>/<?= str_replace(' ', '_', $anime['ani_name']) ?>" title="<?= $anime['ani_name'] ?>"><i class="fas fa-play"></i></a>
                        </div>
                        <div class="film-detail">
                            <h3 class="film-name"><a href="/anime/<?= $anime['uid'] ?>/<?= str_replace(' ', '_', $anime['ani_name']) ?>" class="dynamic-name" title="<?= $anime['ani_name'] ?>"><?= $anime['ani_name'] ?></a></h3>
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
                                <span class="fdi-item"><?php
                                                        $ratings = [
                                                            1 => 'G',
                                                            2 => 'PG',
                                                            3 => 'PG-13',
                                                            4 => 'R',
                                                            5 => 'Rx'
                                                        ];

                                                        echo $ratings[$anime['ani_rate']] ?? '';
                                                        ?></span>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                <?php endforeach; ?>
                <?php foreach (array_slice($animedata, 4, 30) as $anime) : ?>
                    <div class="flw-item">
                        <div class="film-poster">
                            <div class="tick ltr">
                                <div class="tick-item-sub tick-eps amp-algn">
                                    <?= $anime['ani_stats'] ?>
                                </div>
                                <div class="tick-item tick-eps"><?= $anime['ani_ep'] ?></div>
                            </div>
                            <div class="tick-item tick-eps amp-algn">
                                <?= $anime['uid'] ?>
                            </div>
                            <?php if (!empty($anime['ani_score'])) : ?>
                                <div class="tick tick-rate">
                                    <?= $anime['ani_score'] ?>
                                </div>
                            <?php endif; ?>
                            <img class="film-poster-img lazyload" data-src="<?= $anime['ani_poster'] ?>" src="<?= base_url(); ?>/files/images/no_poster.jpg" alt="">
                            <a class="film-poster-ahref" href="/anime/<?= $anime['uid'] ?>/<?= str_replace(' ', '_', $anime['ani_name']) ?>" title="<?= $anime['ani_name'] ?>"><i class="fas fa-play"></i></a>
                        </div>
                        <div class="film-detail">
                            <h3 class="film-name"><a href="/anime/<?= $anime['uid'] ?>/<?= str_replace(' ', '_', $anime['ani_name']) ?>" class="dynamic-name" title="<?= $anime['ani_name'] ?>"><?= $anime['ani_name'] ?></a></h3>
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
                                <span class="fdi-item"><?php
                                                        $ratings = [
                                                            1 => 'G',
                                                            2 => 'PG',
                                                            3 => 'PG-13',
                                                            4 => 'R',
                                                            5 => 'Rx'
                                                        ];

                                                        echo $ratings[$anime['ani_rate']] ?? '';
                                                        ?></span>
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