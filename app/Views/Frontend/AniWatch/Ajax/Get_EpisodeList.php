<div class="seasons-block">
    <div id="detail-ss-list" class="detail-seasons">
        <div class="detail-infor-content">
            <div class="ss-choice">
                <div class="ssc-quick">
                    <input type="hidden" id="searchInput" class="form-control bg-transparent border-dark text-white mx-auto" style="width:80%;" placeholder="Search episodes..">
                </div>
                <div class="clearfix"></div>
            </div>
            <div id="episodes-load" class="ss-list" style="display:block;">
                <?php foreach ($EpisodeListData as $episode) : ?>
                    <a class="ssl-item ep-item-<?= $episode->ep_id_name ?>" title="<?= $episode->ep_name ?>" data-number="<?= $episode->ep_id_name ?>" data-id="<?= $episode->uid ?>" onclick="getEmbedServer(event,<?= $episode->uid ?>,<?= $episode->ep_id_name ?>)" href="/watch?anime=<?php
                                                                                                                                                                                                                                                                                                        $slug = trim(preg_replace("/[^\w\s\-]+/", "", $AnimeName), " ");
                                                                                                                                                                                                                                                                                                        $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                                                                                                                                                                                                                                        $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                                                                                                                                                                                                                                        $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                                                                                                                                                                                                                                        $slug = ucfirst($slug);
                                                                                                                                                                                                                                                                                                        echo $slug;
                                                                                                                                                                                                                                                                                                        ?>&uid=<?= $episode->uid ?>&eps=<?= $episode->ep_id_name ?>">
                        <div class="ssli-order"><?= $episode->ep_id_name ?></div>
                        <div class="ssli-detail">
                            <div class="ep-name"><?= empty($episode->ep_name) ? "Episode-" . $episode->ep_id_name : $episode->ep_name ?></div>
                        </div>
                        <div class="ssli-btn">
                            <div class="btn btn-circle"><i class="fas fa-play"></i></div>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</div>
<div class="clearfix"></div>
</div>