<div class="swiper-wrapper">
    <?php foreach ($sliderUids as $slider_data) : ?>
        <div class="swiper-slide">
            <div class="deslide-item">
                <div class="deslide-cover">
                    <div class="deslide-cover-img">
                        <img class="film-poster-img lazyload" data-src="<?= $slider_data['sliderwallpaper'] ?>">
                    </div>
                </div>
                <div class="deslide-item-content">
                    <div class="desi-sub-text" style="font-size: 0.8rem"><?= $slider_data['ani_jname'] ?></div>
                    <div class="desi-head-title dynamic-name"><?= $slider_data['ani_name'] ?></div>
                    <div class="sc-detail">
                        <div class="scd-item">
                            <i class="fas fa-play-circle mr-1"></i><?php
                                                                    if ($slider_data['ani_type'] == 1) {
                                                                        echo "TV";
                                                                    } elseif ($slider_data['ani_type'] == 2) {
                                                                        echo "Movie";
                                                                    } elseif ($slider_data['ani_type'] == 3) {
                                                                        echo "Ova";
                                                                    } elseif ($slider_data['ani_type'] == 4) {
                                                                        echo "Ona";
                                                                    } elseif ($slider_data['ani_type'] == 5) {
                                                                        echo "Special";
                                                                    }
                                                                    ?>
                        </div>
                        <div class="scd-item"><i class="fas fa-clock mr-1"></i><?= $slider_data['ani_time'] ?>
                        </div>
                        <div class="scd-item m-hide">
                            <i class="fas fa-calendar mr-1"></i>
                            <?= $slider_data['ani_aired'] ?>
                        </div>
                        <?php if (auth()->user()->raw_status ?? 1 == 1) : ?>
                            <?php if (!empty($slider_data['ani_raw'])) : ?>
                                <div class="scd-item mr-1">
                                    <span class="tick-item tick-raw">
                                        RAW
                                    </span>
                                </div>
                            <?php endif; ?>
                        <?php endif; ?>
                        <?php if (auth()->user()->sub_status ?? 1 == 1) : ?>
                            <?php if (!empty($slider_data['ani_sub'])) : ?>
                                <div class="scd-item mr-1">
                                    <span class="tick-item tick-sub">
                                        SUB
                                    </span>
                                </div>
                            <?php endif; ?>
                        <?php endif; ?>
                        <?php if (auth()->user()->dub_status ?? 1 == 1) : ?>
                            <?php if (!empty($slider_data['ani_dub'])) : ?>
                                <div class="scd-item mr-1">
                                    <span class="tick-item tick-dub">
                                        DUB
                                    </span>
                                </div>
                            <?php endif; ?>
                        <?php endif; ?>
                        <?php if (auth()->user()->turk_status ?? 1 == 1) : ?>
                            <?php if (!empty($slider_data['ani_turk'])) : ?>
                                <div class="scd-item mr-1">
                                    <span class="tick-item tick-turk">
                                        TURK
                                    </span>
                                </div>
                            <?php endif; ?>
                        <?php endif; ?>
                        <div class="desi-description"><?= $slider_data['ani_synopsis'] ?></div>
                    </div>
                    <div class="desi-description"></div>
                    <div class="desi-buttons">
                        <a href="/watch?anime=<?= urlencode($slider_data['ani_name']) ?>&uid=<?= $slider_data['uid'] ?>&eps=1" class="btn btn-primary btn-radius mr-2">
                            <i class="fas fa-play-circle mr-2"></i>Watch Now</a>
                        <a class="btn btn-secondary btn-radius" href="/anime/<?= $slider_data['uid'] ?>/<?= str_replace(' ', '-', $slider_data['ani_name']) ?>"><i class="fas fa-info-circle mr-2"></i> Detail<i class="fas fa-angle-right ml-2"></i></a>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    <?php endforeach; ?>
</div>