<div class="seasons-block seasons-block-max">
    <div id="detail-ss-list" class="detail-seasons">
        <div class="detail-infor-content">
            <div class="ss-choice">
                <div class="ssc-list">
                    <div id="ssc-list" class="ssc-button">
                        <div class="ssc-label">List of episodes:</div>
                        <div class="ssc-name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-list mr-3"></i>
                            <span id="current-page">Select</span>
                            <i class="fas fa-angle-down ml-2"></i>
                        </div>
                        <div class="dropdown-menu dropdown-menu-model" aria-labelledby="ssc-list">
                            <?php
                            $perPage = 100;
                            $totalPages = ceil($EpisodeCount / $perPage);
                            for ($i = 1; $i <= $totalPages; $i++) {
                                $startEps = (($i - 1) * $perPage) + 1;
                                $endEps = ($i * $perPage > $EpisodeCount) ? $EpisodeCount : $i * $perPage;
                            ?>
                                <a data-page="<?php echo $i; ?>" href="javascript:;" class="dropdown-item ep-page-item <?php echo ($i == 1) ? 'active' : ''; ?>">
                                    EPS: <?php printf("%03d", $startEps); ?> - <?php printf("%03d", $endEps); ?>
                                    <i style="display: none;" class="fas fa-check ic-active ml-2"></i>
                                </a>
                            <?php
                            }
                            ?>
                        </div>
                    </div>
                </div>
                <div class="ssc-quick" style="display:none;">
                    <div class="sscq-icon"><i class="fas fa-search"></i></div>
                    <input id="search-ep" class="form-control" type="text" placeholder="Number of Ep" autocomplete="off">
                </div>
                <div class="clearfix"></div>
            </div>
            <?php
            $page = 0;
            $page_size = 100;
            $count_episodes = count($EpisodeListData);

            for ($i = 0; $i < $count_episodes; $i++) {
                if ($i % $page_size == 0) {
                    $page++;
                    $display_style = ($page == 1) ? 'block' : 'none';
                    echo '<div id="episodes-page-' . $page . '" class="ss-list ss-list-min" data-page="' . $page . '" style="display: ' . $display_style . ';">';
                }
            ?>
                <a id="getembed" class="ssl-item ep-item-<?= $EpisodeListData[$i]->ep_id_name ?>" title="<?= $EpisodeListData[$i]->ep_name ?>"  onclick="getEmbedServer(event,<?= $EpisodeListData[$i]->uid ?>,<?= $EpisodeListData[$i]->ep_id_name ?>)" href="/watch?anime=<?php
                                                                                                                                                                                                                                                                                        $slug = trim(preg_replace("/[^\w\s\-]+/", "", $AnimeName), " ");
                                                                                                                                                                                                                                                                                        $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                                                                                                                                                                                                                        $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                                                                                                                                                                                                                        $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                                                                                                                                                                                                                        $slug = ucfirst($slug);
                                                                                                                                                                                                                                                                                        echo $slug;
                                                                                                                                                                                                                                                                                        ?>&uid=<?= $EpisodeListData[$i]->uid ?>&eps=<?= $EpisodeListData[$i]->ep_id_name ?>">
                    <div class="ssli-order"><?= $EpisodeListData[$i]->ep_id_name ?></div>
                    <div class="ssli-detail">
                        <div class="ep-name e-dynamic-name"><?= $EpisodeListData[$i]->ep_name ?></div>
                    </div>
                    <div class="ssli-btn">
                        <div class="btn btn-circle"><i class="fas fa-play"></i></div>
                    </div>
                    <div class="clearfix">
                    </div>
                </a>
            <?php
                if (($i + 1) % $page_size == 0) {
                    echo '</div>';
                }
            }
            if ($count_episodes % $page_size != 0) {
                echo '</div>';
            }
            ?>
        </div>
    </div>
</div>
<div class="clearfix"></div>
</div>