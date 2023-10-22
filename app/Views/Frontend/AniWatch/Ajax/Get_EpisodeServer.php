<div id="servers-content">
    <div id="embed-list"></div>

    <?php $embedStatus = ['raw', 'sub', 'dub', 'turk'];
    for ($i = 1; $i <= 4; $i++) {
        if (auth()->user()->{$embedStatus[$i - 1] . '_status'} ?? 1 == 1) :
            if (!empty($embedData[$i])) : ?>
                <div class="ps_-block ps_-block-<?= $embedStatus[$i - 1] ?> servers-<?= $embedStatus[$i - 1] ?>">
                    <div class="ps__-title"><i class="fas fa-closed-captioning mr-2"></i><?= strtoupper($embedStatus[$i - 1]) ?>:</div>
                    <div class="ps__-list">
                        <?php
                        $dataArray = json_decode(json_encode($embedData[$i]), true);
                        $category_id = 0;
                        foreach ($dataArray as $category => $items) :
                            echo "<div class='item server-item'><a href='#' id='category-{$embedStatus[$i - 1]}-{$category_id}' class='btn' onclick='showHideItems(event,\"{$embedStatus[$i - 1]}\",{$category_id})'>{$category}</a></div>";
                            $category_id++;
                        endforeach;

                        $category_id = 0;
                        foreach ($dataArray as $category => $items) :
                            echo "<div id='items-category-{$embedStatus[$i - 1]}-" . $category_id . "'>";
                            foreach ($items as $data) : ?>
                                <div class="item server-item" id='item-category-<?php echo $category_id; ?>' style='display: none;'>
                                    <a href="#" id="embed-<?= $data['id'] ?>" class="btn" onclick="getEmbed(<?= $embedUID ?>, <?= $embedID ?>,'<?= $data['id'] ?>', '<?= $data['fansub_translator'] ?>')"> <?= $data['embed_name'] ?></a>
                                </div>
                        <?php
                            endforeach;
                            echo "</div>";
                            $category_id++;
                        endforeach;
                        ?>
                    </div>
                    <div class="clearfix"></div>
                </div>
            <?php endif; ?>
    <?php endif;
    } ?>


</div>
<?php if (isset(auth()->user()->groups[0]) && in_array(auth()->user()->groups[0], ['superadmin', 'admin'])) : ?>
    <?= $this->include('Frontend/AniWatch/Watch/AdminMenu') ?>
<?php endif; ?>