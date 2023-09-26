<div class="detail-infor-content">
    <div class="ss-choice">
        <div class="ssc-list">
            <div class="input-group mb-3" id="ssc-list">
                <div class="input-group-prepend">
                    <span class="input-group-text bg-dark border-dark">
                        <i class="fa fa-search text-white"></i>
                    </span>
                </div>
                <input type="text" id="searchInput" onkeyup="searchEpisodes()" class="form-control bg-transparent border-dark text-white mx-auto" style="width:80%;" placeholder="Search episodes..">
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div id="episodes-load" class="ss-list" style="display:block;">
        <?php
        $requestURL = "/watch?anime=" . urlencode($animeData['ani_name']);
        foreach ($allEpisodesData['Episode'] as $episode) :
            $isActive = $_SERVER['REQUEST_URI'] == "{$requestURL}&uid={$episode->uid}&eps={$episode->ep_id_name}" ? ' active' : '';
            $epname = isset($episode->ep_name) && !empty($episode->ep_name) ? $episode->ep_name : "Episode-$episode->ep_id_name";
        ?>
            <a title="<?= $episode->ep_name ?>" class="ssl-item ep-item<?= $isActive ?>" href="/watch?anime=<?= urlencode($animeData['ani_name']) ?>&uid=<?= $episode->uid ?>&eps=<?= $episode->ep_id_name ?>" onclick="event.preventDefault(); this.classList.add('active'); window.location.href=this.href;">
                <div class="ssli-order"><?= ($episode->ep_id_name) ?></div>
                <div class="ssli-detail">
                    <div class="ep-name"><?= $epname ?></div>
                </div>
                <div class="ssli-btn">
                    <div class="btn btn-circle"><i class="fas fa-play"></i></div>
                </div>
                <div class="clearfix"></div>
            </a>
        <?php endforeach; ?>
    </div>
</div>

<input type="text" id="searchInput" onkeyup="searchEpisodes()" class="form-control bg-transparent border-dark text-white mx-auto" style="width:80%;" placeholder="Search episodes..">
