<div id="servers-content">
    <div class="ps_-status">
        <div class="content">
            <div class="server-notice">
                <strong>You are watching <b>Episode <?= $embedID ?></b></strong>
                If current server doesn't work please try other servers beside.
            </div>
        </div>
    </div>
    <div id="embed-list"></div>

    <?php if (auth()->user()->raw_status ?? 1 == 1) : ?>

        <?php if (!empty($embedData[1])) : ?>
            <div class="ps_-block ps_-block-raw servers-raw">
                <div class="ps__-title"><i class="fas fa-closed-captioning mr-2"></i>RAW:</div>
                <div class="ps__-list">

                    <?php
                    $dataArray = json_decode(json_encode($embedData[1]), true);
                    $category_id = 0;
                    foreach ($dataArray as $category => $items) :
                        echo "<div class='item server-item'><a href='#' id='category-raw-{$category_id}' class='btn' onclick='showHideItems({$category_id})'>{$category}</a></div>";
                        $category_id++;
                    endforeach;

                    $category_id = 0;
                    foreach ($dataArray as $category => $items) :
                        echo "<div id='items-category-raw-" . $category_id . "'>";
                        foreach ($items as $data) : ?>
                            <div class="item server-item" id='item-category-<?php echo $category_id; ?>' style='display: none;'>
                                <a href="#" id="embed-<?= $data['id'] ?>" class="btn" onclick="getEmbed(<?= $embedUID ?>, <?= $embedID ?>,'<?= $data['id'] ?>')"> <?= $data['embed_name'] ?></a>
                            </div>
                    <?php
                        endforeach;
                        echo "</div>";
                        $category_id++;
                    endforeach;
                    ?>
                    <script>
                        function showHideItems(categoryId) {
                            var rawItems = document.querySelectorAll('[id^="items-category-raw-"]');
                            rawItems.forEach(function(rawItem) {
                                var items = rawItem.querySelectorAll('.item');
                                items.forEach(function(item) {
                                    if (rawItem.id === 'items-category-raw-' + categoryId) {
                                        item.style.display = item.style.display === "none" ? "block" : "none";
                                    } else {
                                        item.style.display = "none";
                                    }
                                });
                            });

                            var rawCategories = document.querySelectorAll('[id^="category-raw-"]');
                            rawCategories.forEach(function(rawCategory) {
                                if (rawCategory.id !== 'category-raw-' + categoryId) {
                                    rawCategory.style.display = rawCategory.style.display === "none" ? "block" : "none";
                                }
                            });
                        }
                    </script>


                </div>
                <div class="clearfix"></div>
            </div>
        <?php endif; ?>

    <?php endif; ?>

</div>
<?php if (isset(auth()->user()->groups[0]) && in_array(auth()->user()->groups[0], ['superadmin', 'admin'])) : ?>
    <?= $this->include('Frontend/AniWatch/Watch/AdminMenu') ?>
<?php endif; ?>