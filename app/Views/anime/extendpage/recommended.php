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

                                    <?php foreach (array_slice($animerecommended, 0, 24) as $ani_rec) : ?>
                                        <div class="flw-item ">
                                            <div class="film-poster">
                                                <div class="tick rtl">
                                                    <div class="tick-item tick-eps amp-algn"><?= $ani_rec['ani_ep'] ?>
                                                    </div>
                                                </div>
                                                <img class="film-poster-img lazyload" src="<?= $ani_rec['ani_poster'] ?>">
                                                <a class="film-poster-ahref" href="/anime/<?= $ani_rec['uid'] ?>/<?= $ani_rec['ani_name'] ?>" title=""><i class="fas fa-play"></i></a>
                                            </div>
                                            <div class="film-detail">
                                                <h3 class="film-name">
                                                    <a href="/anime/<?= $ani_rec['uid'] ?>/<?= $ani_rec['ani_name'] ?>"><?= $ani_rec['ani_name'] ?></a>
                                                </h3>
                                                <div class="fd-infor">
                                                    <span class="fdi-item"><?php
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
                                                        ?></span>
                                                    <span class="dot"></span>
                                                    <span class="fdi-item"><?php
                                                        $seasons = [
                                                            1 => 'Winter',
                                                            2 => 'Spring',
                                                            3 => 'Summer',
                                                            4 => 'Fall'
                                                        ];
                                                        echo $seasons[$ani_rec['ani_release_season']] ?? 'Unknown';
                                                        ?> <?= $ani_rec['ani_release'] ?></span>
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