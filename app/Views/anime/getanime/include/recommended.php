<section class="block_area block_area_category">
    <div class="block_area-header">
        <div class="float-left bah-heading mr-4">
            <h2 class="cat-heading">Recommended for You!</h2>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="tab-content">
        <div class="block_area-content block_area-list film_list film_list-grid film_list-wfeature">
            <div class="film_list-wrap">

                <?php foreach (array_slice($AnimeRecommended, 0, 24) as $ani_rec) : ?>
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

                                                        echo $ratings[$ani_rec['ani_rate']] ?? '';
                                                        ?></div>
                            <div class="tick tick-eps"><?php echo $ani_rec['ani_ep'] ?></div>
                            <div class="tick ltr">
                            </div>
                            <div class="tick rtl">
                                <div class="tick-item">
                                    <span><?php echo $ani_rec['ani_aired'] ?></span>
                                </div>
                            </div>
                            <img class="film-poster-img ls-is-cached lazyloaded" src="<?php echo $ani_rec['ani_poster'] ?>">
                            <a href="/anime/<?php echo $ani_rec['uid'] ?>/<?php echo str_replace(' ', '-', $ani_rec['ani_name']); ?>" class="film-poster-ahref" data-id="<?php echo $ani_rec['uid'] ?>"><i class="fas fa-play"></i></a>
                        </div>
                        <div class="film-detail">
                            <h3 class="film-name"><a href="/anime/<?php echo $ani_rec['uid'] ?>/<?php echo str_replace(' ', '-', $ani_rec['ani_name']); ?>" class="dynamic-name">
                                    <?php echo $ani_rec['ani_name'] ?>
                                </a></h3>
                            <div class="fd-infor">
                                <span class="fdi-item">
                                    <?php
                                    if ($ani_rec['ani_type'] == 1) {
                                        echo "TV";
                                    } elseif ($ani_rec['ani_type'] == 2) {
                                        echo "Movie";
                                    } elseif ($ani_rec['ani_type'] == 3) {
                                        echo "Ova";
                                    } elseif ($ani_rec['ani_type'] == 4) {
                                        echo "Ona";
                                    } elseif ($ani_rec['ani_type'] == 5) {
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
                                    echo $seasons[$ani_rec['ani_release_season']] ?? 'Unknown';
                                    ?> <?php echo $ani_rec['ani_release'] ?>
                                </span>
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