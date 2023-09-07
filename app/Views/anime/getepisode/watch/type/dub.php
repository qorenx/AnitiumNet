<?php if (!empty($episodeEmbedData[3])) : ?>
    <div class="ps_-block ps_-block-dub servers-dub">
        <div class="ps__-title"><i class="fas fa-closed-captioning mr-2"></i>Dub:</div>
        <div class="ps__-list">
            <?php
            $dataArray = json_decode(json_encode($episodeEmbedData[3]), false);
            foreach ($dataArray as $Data) : ?>
                <div class="item server-item">
                    <a href="#" class="btn" onclick="getEmbed('<?= $Data->id ?>')"> <?= $Data->embed_name ?></a>
                </div>
            <?php endforeach; ?>
        </div>
        <div class="clearfix"></div>
    </div>
<?php endif; ?>