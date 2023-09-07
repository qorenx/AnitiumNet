<section class="block_area block_area_home">
    <div class="block_area-header">
        <div class="float-left bah-heading mr-4">
            <h2 class="cat-heading">Upcoming</h2>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="tab-content">
        <div class="block_area-content block_area-list film_list film_list-grid">
            <div class="film_list-wrap">
                <?php foreach (array_slice($topupcoming, 0, 12) as $topcoming) : ?>
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

                                                        echo $ratings[$topcoming['ani_rate']] ?? '';
                                                        ?></div>
                            <div class="tick tick-eps"><?php echo $topcoming['ani_ep'] ?></div>
                            <div class="tick ltr">
                            </div>
                            <div class="tick rtl">
                                <div class="tick-item">
                                    <span><?php echo $topcoming['ani_aired'] ?></span>
                                </div>
                            </div>
                            <img class="film-poster-img ls-is-cached lazyloaded" src="<?php echo $topcoming['ani_poster'] ?>">
                            <a href="/anime/<?php echo $topcoming['uid'] ?>/<?php echo str_replace(' ', '-', $topcoming['ani_name']); ?>" class="film-poster-ahref" data-id="<?php echo $topcoming['uid'] ?>"><i class="fas fa-play"></i></a>
                        </div>
                        <div class="film-detail">
                            <h3 class="film-name"><a href="/anime/<?php echo $topcoming['uid'] ?>/<?php echo str_replace(' ', '-', $topcoming['ani_name']); ?>" class="dynamic-name">
                                    <?php echo $topcoming['ani_name'] ?>
                                </a></h3>
                            <div class="fd-infor">
                                <span class="fdi-item">
                                    <?php
                                    if ($topcoming['ani_type'] == 1) {
                                        echo "TV";
                                    } elseif ($topcoming['ani_type'] == 2) {
                                        echo "Movie";
                                    } elseif ($topcoming['ani_type'] == 3) {
                                        echo "Ova";
                                    } elseif ($topcoming['ani_type'] == 4) {
                                        echo "Ona";
                                    } elseif ($topcoming['ani_type'] == 5) {
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
                                    echo $seasons[$topcoming['ani_release_season']] ?? 'Unknown';
                                    ?> <?php echo $topcoming['ani_release'] ?>
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