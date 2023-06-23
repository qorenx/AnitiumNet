<?php if (!empty($episodeRawData)) : ?>
    <div class="ps_-block ps_-block-raw servers-raw">
        <div class="ps__-title"><i class="fas fa-file mr-2"></i>RAW:</div>
        <div class="ps__-list">
            <?php foreach ($episodeRawData as $rawData) : ?>
                <div class="item server-item">
                    <?php if ($rawData->ep_raw_webconverter == 1) : ?>
                        <a href="#" class="btn" onclick="playVideo('<?php echo $webdata['webconvert']; ?><?= $rawData->raw_frame ?>')"> <?= $rawData->raw_name ?></a>
                    <?php else : ?>
                        <a href="#" class="btn" onclick="playVideo('<?= $rawData->raw_frame ?>')"> <?= $rawData->raw_name ?></a>
                    <?php endif; ?>
                </div>
            <?php endforeach; ?>
        </div>
        <div class="clearfix"></div>
    </div>
<?php endif; ?>