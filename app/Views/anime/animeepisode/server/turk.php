<?php if (!empty($episodeTurkData)) : ?>
    <div class="ps_-block ps_-block-turk servers-turk">
        <div class="ps__-title"><i class="fas fa-closed-captioning mr-2"></i>TURK:</div>
        <div class="ps__-list">
            <?php foreach ($episodeTurkData as $turkData) : ?>
                <div class="item server-item">
                    <?php if ($turkData->ep_turk_webconverter == 1) : ?>
                        <a href="#" class="btn" onclick="playVideo('<?php echo $webdata['webconvert']; ?><?= $turkData->turk_frame ?>')"> <?= $turkData->turk_name ?></a>
                    <?php else : ?>
                        <a href="#" class="btn" onclick="playVideo('<?= $turkData->turk_frame ?>')"> <?= $turkData->turk_name ?></a>
                    <?php endif; ?>
                </div>
            <?php endforeach; ?>
        </div>
        <div class="clearfix"></div>
    </div>
<?php endif; ?>