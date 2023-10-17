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

                <?php foreach ($AnimeRecommendedData as $AnimeData) : ?>
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
                            <div class="tick tick-eps">(<?php echo $AnimeData['ani_ep'] ?> EPS)</div>
                            <img class="film-poster-img ls-is-cached lazyloaded" src="<?php echo $AnimeData['ani_poster'] ?>">
                            <a href="/anime/<?php echo $AnimeData['uid'] ?>/<?php
                                                                            $slug = trim(preg_replace("/[^\w\s\-]+/", "", $AnimeData['ani_name']), " ");
                                                                            $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                            $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                            $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                            $slug = ucfirst($slug);
                                                                            echo $slug;
                                                                            ?>>" class="film-poster-ahref" data-id="<?php echo $AnimeData['uid'] ?>"><i class="fas fa-play"></i></a>
                        </div>
                        <div class="film-detail">
                            <h3 class="film-name"><a href="/anime/<?php echo $AnimeData['uid'] ?>/<?php
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
                                <?php
                                $date = DateTime::createFromFormat("Y-m-d", $AnimeData['ani_aired']);
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