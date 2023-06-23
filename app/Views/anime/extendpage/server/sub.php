<?php if (!empty($episodeSubData)) : ?>
    <div class="ps_-block ps_-block-sub servers-sub">
        <div class="ps__-title"><i class="fas fa-closed-captioning mr-2"></i>SUB:</div>
        <div class="ps__-list">
            <?php foreach ($episodeSubData as $subData) : ?>
                <div class="item server-item">
                    <?php if ($subData->ep_sub_webconverter == 2) : ?>
                        <a href="#" class="btn" onclick="playVideo('<?php echo $webdata['webconvert2']; ?><?= $subData->sub_frame ?>')"> <?= $subData->sub_name ?></a>
                    <?php elseif ($subData->ep_sub_webconverter == 1) : ?>
                        <a href="#" class="btn" onclick="playVideo('<?php echo $webdata['webconvert']; ?><?= $subData->sub_frame ?>')"> <?= $subData->sub_name ?></a>
                    <?php else : ?>
                        <a href="#" class="btn" onclick="playVideo('<?= $subData->sub_frame ?>')"> <?= $subData->sub_name ?></a>
                    <?php endif; ?>
                </div>
            <?php endforeach; ?>
        </div>
        <div class="clearfix"></div>
    </div>
<?php endif; ?>
