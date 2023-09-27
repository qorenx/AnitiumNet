<section class="block_area block_area_trending">
    <div class="block_area-header">
        <div class="bah-heading">
            <h2 class="cat-heading">Trending</h2>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="block_area-content">
        <div class="trending-list" id="trending-home">
            <div class="swiper-container swiper-container-initialized swiper-container-horizontal">
                <div class="swiper-wrapper">
                    <?php $key = 1;
                    foreach ($anitrending as $anitrend) : ?>
                        <div class="swiper-slide">
                            <div class="item">
                                <div class="number">
                                    <span><?= $key ?></span>
                                    <div class="film-title dynamic-name"><?= $anitrend['ani_name'] ?>
                                    </div>
                                </div>
                                <a href="/anime/<?= $anitrend['uid'] ?>/<?php
                                                                        $slug = trim(preg_replace("/[^\w\s\-]+/", "", $anitrend['ani_name']), " ");
                                                                        $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                        $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                        $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                        $slug = ucfirst($slug);
                                                                        echo $slug;
                                                                        ?>" class="film-poster">
                                    <img class="film-poster-ahref" data-id="<?php echo $anitrend['uid'] ?>" src="<?= $anitrend['ani_poster'] ?>" class="film-poster-img lazyload">
                                </a>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    <?php $key++;
                    endforeach; ?>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="trending-navi">
                <div class="navi-next" tabindex="-1" role="button" aria-label="Next slide" aria-disabled="true"><i class="fas fa-angle-right"></i>
                </div>
                <div class="navi-prev" tabindex="-1" role="button" aria-label="Previous slide" aria-disabled="true"><i class="fas fa-angle-left"></i>
                </div>
            </div>
        </div>
    </div>
</section>