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
                    <div class="desi-head-title dynamic-name"><?php
                                                                $ani_name = $slider_data['ani_name'];
                                                                echo htmlspecialchars($ani_name, ENT_QUOTES, 'UTF-8');
                                                                ?></div>
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
                            <?php
                            $date = DateTime::createFromFormat("Y-m-d", $slider_data['ani_aired']);
                            $formattedDate = $date->format("M j, Y");
                            ?>
                            <?php echo $formattedDate ?>
                        </div>
                        <?php
                        $quality = $slider_data['ani_quality'];
                        if ($quality != 0) {
                        ?>
                            <div class="scd-item mr-1"><span class="quality"><?= $quality == 1 ? 'HD' : ($quality == 2 ? 'SD' : ($quality == 3 ? 'BD' : 'BD')) ?></span>
                            </div>
                        <?php
                        }
                        ?>
                        <?php
                        $types = ['raw' => 'RAW', 'sub' => 'SUB', 'dub' => 'DUB', 'turk' => 'TURK'];
                        foreach ($types as $type => $display) :
                            if ((auth()->user()->{$type . '_status'} ?? 1) == 1 && !empty($slider_data['type'][$display])) : ?>
                                <div class="scd-item mr-1">
                                    <span class="tick-item tick-<?php echo $type; ?>"><?php echo $display; ?>
                                    </span>
                                </div>
                        <?php
                            endif;
                        endforeach;
                        ?>
                        <div class="desi-description"><?= $slider_data['ani_synopsis'] ?></div>
                    </div>
                    <div class="desi-description"></div>
                    <div class="desi-buttons">
                        <a href="/watch?anime=<?= urlencode($slider_data['ani_name']) ?>&eps=1" class="btn btn-primary btn-radius mr-2">
                            <i class="fas fa-play-circle mr-2"></i>Watch Now</a>
                        <a class="btn btn-secondary btn-radius" href="/anime/<?= $slider_data['uid'] ?>/<?= urlencode($slider_data['ani_name']) ?>"><i class="fas fa-info-circle mr-2"></i> Detail<i class="fas fa-angle-right ml-2"></i></a>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    <?php endforeach; ?>
</div>