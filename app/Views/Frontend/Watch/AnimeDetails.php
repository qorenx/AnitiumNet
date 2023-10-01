<div class="anisc-poster">
    <div class="film-poster" style="position: relative;">
        <img src="<?= $AnimeData['ani_poster'] ?>" class="film-poster-img ls-is-cached lazyloaded">
    </div>
    <?php if (!empty($AnimeData['ani_manga_url'])) { ?>
        <a class="add-manga mb-0 get-mangas" href="<?= $AnimeData['ani_manga_url'] ?>" target="_blank">
            <div class="d-flex align-items-center">
                <div class="add-manga-icon">
                    <div class="manga-icon"><img src="https://icon-library.com/images/manga-icon/manga-icon-0.jpg"></div>
                </div>
                <div class="add-manga-inner">
                    <span><?= parse_url($AnimeData['ani_manga_url'], PHP_URL_HOST) ?></span>
                </div>
            </div>
        </a>
    <?php } ?>
</div>
<div class="anisc-detail">
    <div class="film-name">
        <h6><a href="/anime/<?= $AnimeData['uid'] ?>/<?php
                                                        $slug = trim(preg_replace("/[^\w\s\-]+/", "", $AnimeData['ani_name']), " ");
                                                        $slug = preg_replace("/\s+|--/", "_", $slug);
                                                        $slug = preg_replace("/\bii\b/", "II", $slug);
                                                        $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                        $slug = ucfirst($slug);
                                                        echo $slug;
                                                        ?>" class="text-white dynamic-name" title="" style="opacity: 1;"><?= $AnimeData['ani_name'] ?></a></h6>
    </div>
    <div class="film-stats">
        <div class="tick">
            <?php
            $quality = $AnimeData['ani_quality'];
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
                                            switch ($AnimeData['ani_rate']) {
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
                                if ($AnimeData['ani_type'] == 1) {
                                    echo "TV";
                                } elseif ($AnimeData['ani_type'] == 2) {
                                    echo "Movie";
                                } elseif ($AnimeData['ani_type'] == 3) {
                                    echo "Ova";
                                } elseif ($AnimeData['ani_type'] == 4) {
                                    echo "Ona";
                                } elseif ($AnimeData['ani_type'] == 5) {
                                    echo "Special";
                                }
                                ?></span>
            <span class="dot"></span>
            <span class="item"><?= $AnimeData['ani_time'] ?></span>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="film-stats">
        <div class="tick">
            <?php
            $user = auth()->user();
            $animeEmbedCounts = $AnimeTypeandEpisodeCountData['embed_type_counts'];
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
            <div class="tick-item tick-eps"><?= $AnimeTypeandEpisodeCountData['episode_count'] ?></div>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="film-description m-hide">
        <div class="text">
            <?= substr($AnimeData['ani_synopsis'], 0, 250) . "..." ?>
        </div>
    </div>
    <div class="block">
        <a href="/anime/<?= $AnimeData['uid'] ?>/<?php
                                                    $slug = trim(preg_replace("/[^\w\s\-]+/", "", $AnimeData['ani_name']), " ");
                                                    $slug = preg_replace("/\s+|--/", "_", $slug);
                                                    $slug = preg_replace("/\bii\b/", "II", $slug);
                                                    $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                    $slug = ucfirst($slug);
                                                    echo $slug;
                                                    ?>" class="btn btn-xs btn-light">
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