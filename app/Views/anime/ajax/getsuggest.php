<?php $count = 0; ?>
<?php foreach ($data as $anime) : ?>
    <?php if ($count++ === 5) break; ?>
    <a href="/anime/<?php echo $anime['uid'] ?>/<?= urlencode($anime['ani_name']) ?>" class="nav-item">
        <div class="film-poster">
            <img class="film-poster-img ls-is-cached lazyloaded" src="<?php echo $anime['ani_poster'] ?>">
        </div>
        <div class="srp-detail">
            <h3 class="film-name" data-jname="<?php echo $anime['ani_jname'] ?>"><?php echo $anime['ani_name'] ?></h3>

            <div class="alias-name"><?php echo $anime['ani_jname'] ?></div>

            <div class="film-infor">
                <span> <?php
                        $seasons = [
                            1 => 'Winter',
                            2 => 'Spring',
                            3 => 'Summer',
                            4 => 'Fall'
                        ];
                        echo $seasons[$anime['ani_release_season']] ?? 'Unknown';
                        ?> <?php echo $anime['ani_release'] ?></span><i class="dot"></i><?php
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
                                                                                        ?><i class="dot"></i><span><?php echo $anime['ani_time'] ?></span>
            </div>
        </div>
        <div class="clearfix"></div>
    </a>
<?php endforeach; ?>