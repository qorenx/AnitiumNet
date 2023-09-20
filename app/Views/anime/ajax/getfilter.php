<?php foreach ($pageData as $anime) : ?>
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
            <a href="anime/<?php echo $anime['uid'] ?>/<?= urlencode($anime['ani_name']) ?>" class="film-poster-ahref" data-id="<?php echo $anime['uid'] ?>"><i class="fas fa-play"></i></a>
        </div>
        <div class="film-detail">
            <h3 class="film-name"><a href="anime/<?php echo $anime['uid'] ?>/<?= urlencode($anime['ani_name']) ?>" class="dynamic-name">
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