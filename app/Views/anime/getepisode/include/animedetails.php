<div class="anisc-poster">
    <div class="film-poster" style="position: relative;">
        <img src="<?= $animeData['ani_poster'] ?>" class="film-poster-img ls-is-cached lazyloaded">
    </div>
    <?php if (!empty($animeData['ani_manga_url'])) { ?>
        <a class="add-manga mb-0 get-mangas" href="<?= $animeData['ani_manga_url'] ?>" target="_blank">
            <div class="d-flex align-items-center">
                <div class="add-manga-icon">
                    <div class="manga-icon"><img src="https://icon-library.com/images/manga-icon/manga-icon-0.jpg"></div>
                </div>
                <div class="add-manga-inner">
                    <span><?= parse_url($animeData['ani_manga_url'], PHP_URL_HOST) ?></span>
                </div>
            </div>
        </a>
    <?php } ?>
</div>
<div class="anisc-detail">
    <h2 class="film-name">
        <a href="/anime/<?= $animeData['uid'] ?>/<?= urlencode($animeData['ani_name']) ?>" class="text-white dynamic-name" title="" style="opacity: 1;">
            <?= $animeData['ani_name'] ?>
        </a><br />
        <a href="/anime/<?= $animeData['uid'] ?>/<?= str_replace(' ', '_', $animeData['ani_jname']) ?>" class="text-white dynamic-name" title="" style="opacity: 1; font-size: 0.6em;">
            <?= $animeData['ani_jname'] ?>
        </a>
    </h2>

    <div class="film-stats">
        <div class="tick">
            <?php
            $quality = $animeData['ani_quality'];
            if ($quality != 0) {
            ?>
                <div class="tick-item tick-quality">
                    <?= $quality == 1 ? 'HD' : ($quality == 2 ? 'SD' : ($quality == 3 ? 'BD' : 'BD')) ?>
                    <div></div>
                </div>
            <?php
            }
            ?>
            <div class="tick-item tick-pg"><?php
                                            switch ($animeData['ani_rate']) {
                                                case 1:
                                                    echo "G";
                                                    break;
                                                case 2:
                                                    echo "PG";
                                                    break;
                                                case 3:
                                                    echo "PG-13";
                                                    break;
                                                case 4:
                                                    echo "R-17+";
                                                    break;
                                                case 5:
                                                    echo "R+";
                                                    break;
                                                case 6:
                                                    echo "Rx";
                                                    break;
                                            }
                                            ?></div>

            <span class="dot"></span>
            <span class="item"><?php
                                if ($animeData['ani_type'] == 1) {
                                    echo "TV";
                                } elseif ($animeData['ani_type'] == 2) {
                                    echo "Movie";
                                } elseif ($animeData['ani_type'] == 3) {
                                    echo "Ova";
                                } elseif ($animeData['ani_type'] == 4) {
                                    echo "Ona";
                                } elseif ($animeData['ani_type'] == 5) {
                                    echo "Special";
                                }
                                ?></span>
            <span class="dot"></span>
            <span class="item"><?= $animeData['ani_time'] ?></span>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="film-stats">
        <div class="tick">
            <?php
            $user = auth()->user();
            $animeEmbedCounts = $animeEpisodeData['embed_type_counts'];
            $statusToEmbedMap = [
                "raw_status" => ["tick-raw", "fa-language", "1"],
                "sub_status" => ["tick-sub", "fa-closed-captioning", "2"],
                "dub_status" => ["tick-dub", "fa-microphone", "3"],
                "turk_status" => ["tick-turk", "fa-globe-asia", "4"]
            ];

            foreach ($statusToEmbedMap as $status => $embed) {
                if (($user->$status ?? 1) == 1 && !empty($animeEmbedCounts[$embed[2]])) {
                    echo "<div class='tick-item {$embed[0]}'><i class='fas {$embed[1]} mr-1'></i>{$animeEmbedCounts[$embed[2]]}</div>";
                }
            }
            ?>
            <div class="tick-item tick-eps"><?= $animeEpisodeData['episode_count'] ?></div>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="film-description m-hide">
        <div class="text">
            <?= substr($animeData['ani_synopsis'], 0, 250) . "..." ?>
        </div>
    </div>
    <div class="block">
        <a href="/anime/<?= $animeData['uid'] ?>/<?= urlencode($animeData['ani_name']) ?>" class="btn btn-xs btn-light">
            <i class="fas fa-book-open mr-2"></i> View Details
        </a>
    </div>
</div>
<div class="dt-rate">
    <div class="block-rating ">
        <div id="vote-info">
        </div>
        <div class="clearfix"></div>
    </div>

</div>