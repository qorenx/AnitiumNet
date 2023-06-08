<div id="anime-trending" >
    <div class="container" style="max-width:100%!important;width:100%!important;">
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
                        <?php $key = 1; foreach ($anitrending as $anitrend): ?>
                            <div class="swiper-slide">
                                <div class="item">
                                    <div class="number">
                                        <span><?= $key ?></span>
                                        <div class="film-title dynamic-name" ><?= $anitrend['ani_name'] ?>
                                        </div>
                                    </div>
                                    <a href="/anime/<?= $anitrend['uid'] ?>/<?= str_replace(' ', '-', $anitrend['ani_name']) ?>" class="film-poster"
                                        title="">
                                        <img data-src=""
                                            src="<?= $anitrend['ani_poster'] ?>"
                                            class="film-poster-img lazyload" alt="">
                                    </a>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <?php $key++; endforeach; ?>
                        </div>
                        <div class="clearfix"></div>
                        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                    </div>
                    <div class="trending-navi">
                        <div class="navi-next swiper-button-disabled" tabindex="-1" role="button"
                            aria-label="Next slide" aria-disabled="true"><i class="fas fa-angle-right"></i>
                        </div>
                        <div class="navi-prev swiper-button-disabled" tabindex="-1" role="button"
                            aria-label="Previous slide" aria-disabled="true"><i class="fas fa-angle-left"></i>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>