<div id="vote-info"></div>
<div id="ani_detail">
    <div class="ani_detail-stage">
        <div class="container" style="max-width:100%!important;width:100%!important;">
            <div class="anis-cover-wrap">
                <div class="anis-cover" style="background-image: url(<?= $AnimeData['ani_poster'] ?>)"></div>
            </div>
            <div class="anis-content">
                <div class="anisc-poster">
                    <div class="film-poster">
                        <div class="tick tick-rate">
                            <?php
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
                            ?>
                        </div>
                        <img src="<?= $AnimeData['ani_poster'] ?>" class="film-poster-img">
                    </div>
                    <?php if (!empty($AnimeData['ani_pv'])) : ?>
                        <div class="d-flex align-items-center">
                            <?= $this->include('anime/getanime/include/promevideo') ?>
                        </div>
                    <?php endif; ?>
                </div>
                <div class="anisc-detail">
                    <div class="prebreadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="/home">Home</a></li>
                                <li class="breadcrumb-item"><a href="/type/<?php if ($AnimeData['ani_type'] == 1) {
                                                                                                                            echo "tv";
                                                                                                                        } elseif ($AnimeData['ani_type'] == 2) {
                                                                                                                            echo "movie";
                                                                                                                        } elseif ($AnimeData['ani_type'] == 3) {
                                                                                                                            echo "ova";
                                                                                                                        } elseif ($AnimeData['ani_type'] == 4) {
                                                                                                                            echo "ona";
                                                                                                                        } elseif ($AnimeData['ani_type'] == 5) {
                                                                                                                            echo "special";
                                                                                                                        } ?>"><?php if ($AnimeData['ani_type'] == 1) {
                                                                                                                            echo "TV";
                                                                                                                        } elseif ($AnimeData['ani_type'] == 2) {
                                                                                                                            echo "Movie";
                                                                                                                        } elseif ($AnimeData['ani_type'] == 3) {
                                                                                                                            echo "Ova";
                                                                                                                        } elseif ($AnimeData['ani_type'] == 4) {
                                                                                                                            echo "Ona";
                                                                                                                        } elseif ($AnimeData['ani_type'] == 5) {
                                                                                                                            echo "Special";
                                                                                                                        } ?></a></li>
<li class="breadcrumb-item dynamic-name active" style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; width: 80%; display: inline-block;"><?= $AnimeData['ani_name'] ?></li>                            </ol>
                        </nav>
                    </div>
                    <h2 class="film-name dynamic-name"><?= $AnimeData['ani_name'] ?></h2>
                    <div class="tick">
                        <div class="film-stats">
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
                            <div class="tick-item tick-type"><?php
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
                                                                ?></div>
                            <?php if (!empty($AnimeData['ani_source'])) : ?>
                                <div class="tick-item tick-source"><?= ($AnimeData['ani_source'] == 1) ? "Manga" : (($AnimeData['ani_source'] == 2) ? "LightNovel" : "Other") ?></div>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="tick">
                        <div class="film-stats">
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
                        </div>
                    </div>
                    <div class="film-buttons">
                        <?php if (!empty($episodesData)) : ?>
                            <a href="/watch?anime=<?= urlencode($AnimeData['ani_name']) ?>&uid=<?= $AnimeData['uid'] ?>&eps=<?= $episodesData ?>" class="btn btn-radius btn-primary btn-play"><i class="fas fa-play mr-2"></i>Watch now</a>
                        <?php endif; ?>
                        <?php if (auth()->loggedIn()) : ?>
                            <?= $this->include('anime/getanime/admin/watchadd') ?>
                        <?php endif; ?>
                        <?php if (isset(auth()->user()->groups[0]) && in_array(auth()->user()->groups[0], ['superadmin', 'admin'])) : ?>
                            <?= $this->include('anime/getanime/admin/controll') ?>
                        <?php endif; ?>
                    </div>
                    <div class="film-description m-hide">
                        <div class="text"><?= $AnimeData['ani_synopsis'] ?>
                        </div>
                        <div class="film-text m-hide">
                            <?php echo $settings['Advanced'][0]['value']; ?> is the best site to watch <strong><?= $AnimeData['ani_name'] ?></strong> SUB online, or
                            you can even watch <strong><?= $AnimeData['ani_name'] ?></strong> DUB in HD quality.
                        </div>
                        <div class="mba-block" style="display: block; text-align: center; margin: 1rem 0;">
                            <a href="" target="_blank" rel="nofollow">
                                <img style="width: 728px; height: auto; max-width: 100%;" src="" alt=""></a>
                        </div>
                    </div>
                    <?= $this->include('anime/getanime/include/social') ?>
                    <div class="anisc-info-wrap">
                        <div class="anisc-info">
                            <?php if (!empty($AnimeData['ani_jname'])) : ?>
                                <div class="item item-title">
                                    <span class="item-head">Japanese:</span>
                                    <span class="name"><?= $AnimeData['ani_jname'] ?></span>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($AnimeData['ani_synonyms'])) : ?>
                                <div class="item item-title">
                                    <span class="item-head">Synonyms:</span>
                                    <span class="name"><?= $AnimeData['ani_synonyms'] ?></span>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($AnimeData['ani_country'])) : ?>
                                <div class="item item-title">
                                    <span class="item-head">Country:</span>
                                    <span class="name"><?= $AnimeData['ani_country'] == 1 ? "Japanese" : ($AnimeData['ani_stats'] == 2 ? "Chinese" : "") ?></span>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($AnimeData['ani_aired'])) : ?>
                                <div class="item item-title">
                                    <span class="item-head">Aired:</span>
                                    <span class="name"><?= $AnimeData['ani_aired'] ?> to <?= $AnimeData['ani_aired_fin'] ?></span>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($AnimeData['ani_release_season'])) : ?>
                                <div class="item item-title">
                                    <span class="item-head">Premiered:</span>
                                    <span class="name"><?php
                                                        $seasons = [
                                                            1 => 'Winter',
                                                            2 => 'Spring',
                                                            3 => 'Summer',
                                                            4 => 'Fall'
                                                        ];
                                                        echo $seasons[$AnimeData['ani_release_season']] ?? 'Unknown';
                                                        ?></span>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($AnimeData['ani_time'])) : ?>
                                <div class="item item-title">
                                    <span class="item-head">Duration:</span>
                                    <span class="name"><?= $AnimeData['ani_time'] ?></span>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($AnimeData['ani_stats'])) : ?>
                                <div class="item item-title">
                                    <span class="item-head">Status:</span>
                                    <span class="name"><?= $AnimeData['ani_stats'] == 1 ? "Currently Airing" : ($AnimeData['ani_stats'] == 2 ? "Finished" : ($AnimeData['ani_stats'] == 3 ? "Not yet Aired" : "")) ?></span>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($AnimeData['ani_score'])) : ?>
                                <div class="item item-title">
                                    <span class="item-head">MAL Score:</span>
                                    <span class="name"><?= $AnimeData['ani_score'] ?></span>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($AnimeData['ani_genre'])) : ?>
                                <div class="item item-list">
                                    <span class="item-head">Genres:</span>
                                    <?php
                                    $genres = explode(',', $AnimeData['ani_genre']);
                                    foreach ($genres as $genre) {
                                        $genre = trim($genre);
                                        $genre_url = base_url() . "genre/$genre";
                                        echo "<a href='$genre_url'>$genre</a>";
                                        if ($genre != end($genres)) {
                                            echo " ";
                                        }
                                    }
                                    ?>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($AnimeData['ani_studio'])) : ?>
                                <?= $this->include('anime/getanime/include/studio') ?>
                            <?php endif; ?>
                            <?php if (!empty($AnimeData['ani_producers'])) : ?>
                                <?= $this->include('anime/getanime/include/producers') ?>
                            <?php endif; ?>
                            <?php if (!empty($AnimeData['external'])) : ?>
                                <?= $this->include('anime/getanime/include/resources') ?>
                            <?php endif; ?>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
</div>