<?php if (!empty($episodeDubData)) : ?>
    <div class="ps_-block ps_-block-dub servers-dub">
        <div class="ps__-title"><i class="fas fa-microphone-alt mr-2"></i>DUB:</div>
        <div class="ps__-list">
            <?php foreach ($episodeDubData as $dubData) : ?>
                <div class="item server-item">
                    <?php if ($dubData->ep_dub_webconverter == 1) : ?>
                        <a href="#" class="btn" onclick="playVideo('<?php echo $webdata['webconvert']; ?><?= $dubData->dub_frame ?>')"> <?= $dubData->dub_name ?></a>
                    <?php else : ?>
                        <a href="#" class="btn" onclick="playVideo('<?= $dubData->dub_frame ?>')"> <?= $dubData->dub_name ?></a>
                    <?php endif; ?>
                </div>
            <?php endforeach; ?>
        </div>
        <div class="clearfix"></div>
    </div>
<?php endif; ?>