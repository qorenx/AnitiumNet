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
                            <?php
                            $ratings = [
                                4 => 'R-17+',
                                5 => 'R+',
                                6 => 'Rx'
                            ];

                            if (isset($ratings[$topcoming['ani_rate']])) {
                            ?>
                                <div class="tick tick-rate">
                                    <?php echo $ratings[$topcoming['ani_rate']]; ?>
                                </div>
                            <?php
                            }
                            ?>
                            <div class="tick tick-eps">(<?php echo $topcoming['ani_ep'] ?> EPS)</div>
                            <img class="film-poster-img ls-is-cached lazyloaded" src="<?php echo $topcoming['ani_poster'] ?>">
                            <a href="/anime/<?php echo $topcoming['uid'] ?>/<?php
                                                                            $nameParts = explode(',', $topcoming['ani_name'], 2);
                                                                            if (count($nameParts) > 1) {
                                                                                $name = trim($nameParts[1]);
                                                                            } else {
                                                                                $name = $topcoming['ani_name'];
                                                                            }
                                                                            $slug = strtolower(str_replace(' ', '-', implode(' ', array_slice(explode(' ', preg_replace('/[\/*!\^%&\/()=?.:",]/', '', $name)), 0, 10))));
                                                                            echo $slug;
                                                                            ?>" class="film-poster-ahref" data-id="<?php echo $topcoming['uid'] ?>"><i class="fas fa-play"></i></a>
                        </div>
                        <div class="film-detail">
                            <h3 class="film-name"><a href="/anime/<?php echo $topcoming['uid'] ?>/<?php
                                                                                                    $nameParts = explode(',', $topcoming['ani_name'], 2);
                                                                                                    if (count($nameParts) > 1) {
                                                                                                        $name = trim($nameParts[1]);
                                                                                                    } else {
                                                                                                        $name = $topcoming['ani_name'];
                                                                                                    }
                                                                                                    $slug = strtolower(str_replace(' ', '-', implode(' ', array_slice(explode(' ', preg_replace('/[\/*!\^%&\/()=?.:",]/', '', $name)), 0, 10))));
                                                                                                    echo $slug;
                                                                                                    ?>" class="dynamic-name">
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
                                <?php
                                $date = DateTime::createFromFormat("Y-m-d", $topcoming['ani_aired']);
                                if (!empty($date)) {
                                    $formattedDate = $date->format("M j, Y");
                                ?>
                                    <span class="dot"></span>
                                    <span class="fdi-item fdi-duration"><?php echo $formattedDate ?></span>
                                <?php
                                }
                                ?>
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