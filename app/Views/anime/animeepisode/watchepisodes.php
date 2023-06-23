<div id="episodes-content">
    <div class="seasons-block seasons-block-max">
        <div id="detail-ss-list" class="detail-seasons">
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
                    function extractEpisodeNumber($episodeIdName)
                    {
                        return (float)preg_replace('/[^0-9\.]/', '', $episodeIdName);
                    }
                    usort($allEpisodesData, function ($a, $b) {
                        return extractEpisodeNumber($a->ep_id_name) <=> extractEpisodeNumber($b->ep_id_name);
                    });
                    foreach ($allEpisodesData as $episode) : ?>
                        <a title="<?= $episode->ep_name ?>" class="ssl-item ep-item<?= ($_SERVER['REQUEST_URI'] == "/watch?anime=" . urlencode($animeData['ani_name']) . "&uid={$episode->uid}&eps={$episode->ep_id_name}") ? ' active' : ''; ?>" href="/watch?anime=<?= urlencode($animeData['ani_name']) ?>&uid=<?= $episode->uid ?>&eps=<?= $episode->ep_id_name ?>" onclick="event.preventDefault(); this.classList.add('active'); window.location.href=this.href;">
                            <div class="ssli-order"><?= extractEpisodeNumber($episode->ep_id_name) ?></div>
                            <div class="ssli-detail">
                                <div class="ep-name" data-jname="<?= $episode->ep_jname ?>" title="<?= $episode->ep_romaji ?>"><?= isset($episode->ep_name) && !empty($episode->ep_name) ? $episode->ep_name : "Episode-$episode->ep_id_name" ?></div>
                            </div>
                            <div class="ssli-btn">
                            <div class="btn btn-circle"><i class="fas fa-play"></i></div>
                            </div>
                            <div class="clearfix"></div>
                        </a>
                    <?php endforeach; ?>
                </div>
                <script type="text/javascript">
                    let activeItem = null;
                    const input = document.getElementById("searchInput");
                    const ssl = document.getElementById("episodes-load");
                    document.addEventListener('click', (event) => {
                        if (activeItem && !event.target.classList.contains('ep-item')) {
                            activeItem.classList.remove('active');
                            activeItem = null;
                        }
                        if (event.target.classList.contains('ep-item')) {
                            event.preventDefault();
                            event.target.classList.add('active');
                            activeItem = event.target;
                        }
                    });
                    input.addEventListener('input', () => {
                        const filter = input.value.toUpperCase();
                        const ssliOrder = Array.from(ssl.getElementsByClassName("ssli-order"));
                        ssl.querySelectorAll('.highlight').forEach((item) => {
                            item.style.color = "";
                            item.style.opacity = "";
                        });
                        ssliOrder.forEach((item) => {
                            const episode = item.innerHTML.trim();
                            const epName = item.parentNode.querySelector('.ep-name').innerHTML.trim();
                            if (episode.toUpperCase().indexOf(filter) > -1 || epName.toUpperCase().indexOf(filter) > -1) {
                                item.parentElement.style.display = "";
                            } else {
                                item.parentElement.style.display = "none";
                                if (item.parentElement.classList.contains('active')) {
                                    item.parentElement.classList.remove('active');
                                    activeItem = null;
                                }
                            }
                        });
                        if (activeItem && activeItem.parentElement.style.display == "none") {
                            activeItem.classList.remove('active');
                            activeItem = null;
                        }
                    });
                </script>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
</div>