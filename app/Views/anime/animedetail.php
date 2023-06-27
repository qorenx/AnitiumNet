<div id="ani_detail">
    <div class="ani_detail-stage">
        <div class="container" style="max-width:100%!important;width:100%!important;">
            <div class="anis-cover-wrap">
                <?php
                if (!empty($animetv['ani_wallpaper'])) {
                    echo '<div class="anis-cover" style="background-image: url(\'' . $animetv['ani_wallpaper'] . '\')"></div>';
                } else {
                    echo '<div class="anis-cover" style="background-image: url(\'' . $webdata['webaniscover'] . '\')"></div>';
                }
                ?> </div>
            <div class="anis-content">
                <div class="anisc-poster">
                    <div class="film-poster">
                        <?php if (!empty($animetv['ani_rate'])) : ?>
                            <div class="tick tick-rate"><?php
                                                        $ratings = [
                                                            1 => 'G',
                                                            2 => 'PG',
                                                            3 => 'PG-13',
                                                            4 => 'R',
                                                            5 => 'Rx'
                                                        ];

                                                        echo $ratings[$animetv['ani_rate']] ?? '';
                                                        ?></div>
                        <?php endif; ?>
                        <img src="<?= $animetv['ani_poster'] ?>" class="film-poster-img">
                    </div>
                    <?php if (!empty($animetv['ani_pv'])) : ?>
                        <div class="d-flex align-items-center">
                            <?= $this->include('anime/animedetails/animepromevideo') ?>
                        </div>
                    <?php endif; ?>
                </div>
                <div class="anisc-detail">
                    <div class="prebreadcrumb">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="/home">Home</a></li>
                                <li class="breadcrumb-item"><a href="/type/<?= strtolower($animetv['ani_type']) ?>"><?php
                                                                                                                    if ($animetv['ani_type'] == 1) {
                                                                                                                        echo "TV";
                                                                                                                    } elseif ($animetv['ani_type'] == 2) {
                                                                                                                        echo "Movie";
                                                                                                                    } elseif ($animetv['ani_type'] == 3) {
                                                                                                                        echo "Ova";
                                                                                                                    } elseif ($animetv['ani_type'] == 4) {
                                                                                                                        echo "Ona";
                                                                                                                    } elseif ($animetv['ani_type'] == 5) {
                                                                                                                        echo "Special";
                                                                                                                    }
                                                                                                                    ?></a>
                                </li>
                                <li class="breadcrumb-item dynamic-name active"><?= $animetv['ani_name'] ?></li>
                            </ol>
                        </nav>
                    </div>
                    <h2 class="film-name dynamic-name"><?= $animetv['ani_name'] ?></h2>
                    <div class="tick">
                        <div class="film-stats">
                            <?php if (!empty($animetv['ani_type'])) : ?>
                                <div class="tick-item tick-type"><?php
                                                                    if ($animetv['ani_type'] == 1) {
                                                                        echo "TV";
                                                                    } elseif ($animetv['ani_type'] == 2) {
                                                                        echo "Movie";
                                                                    } elseif ($animetv['ani_type'] == 3) {
                                                                        echo "Ova";
                                                                    } elseif ($animetv['ani_type'] == 4) {
                                                                        echo "Ona";
                                                                    } elseif ($animetv['ani_type'] == 5) {
                                                                        echo "Special";
                                                                    }
                                                                    ?></div>
                            <?php endif; ?>
                            <?php if (!empty($animetv['ani_source'])) : ?>
                                <div class="tick-item tick-source"><?= ($animetv['ani_source'] == 1) ? "Manga" : (($animetv['ani_source'] == 2) ? "LightNovel" : "Other") ?></div>
                            <?php endif; ?>
                            <?php if (auth()->user()->raw_status ?? 1 == 1) : ?>
                                <?php if (!empty($animetv['ani_raw'])) : ?>
                                    <div class="tick-item tick-raw">RAW</div>
                                <?php endif; ?>
                            <?php endif; ?>
                            <?php if (auth()->user()->sub_status ?? 1 == 1) : ?>
                                <?php if (!empty($animetv['ani_sub'])) : ?>
                                    <div class="tick-item tick-sub">SUB</div>
                                <?php endif; ?>
                            <?php endif; ?>
                            <?php if (auth()->user()->dub_status ?? 1 == 1) : ?>
                                <?php if (!empty($animetv['ani_dub'])) : ?>
                                    <div class="tick-item tick-dub">DUB</div>
                                <?php endif; ?>
                            <?php endif; ?>
                            <?php if (auth()->user()->turk_status ?? 1 == 1) : ?>
                                <?php if (!empty($animetv['ani_turk'])) : ?>
                                    <div class="tick-item tick-turk">TURK</div>
                                <?php endif; ?>
                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="film-buttons">
                        <?php if (!empty($episodesData['ep_id_name'])) : ?>
                            <a href="/watch?anime=<?= urlencode($animetv['ani_name']) ?>&uid=<?= $animetv['uid'] ?>&eps=<?= $episodesData['ep_id_name'] ?>" class="btn btn-radius btn-primary btn-play"><i class="fas fa-play mr-2"></i>Watch now</a>
                        <?php endif; ?>
                        <?php if (auth()->loggedIn()) : ?>
                            <?= $this->include('anime/animedetails/animeaddlist') ?>
                        <?php endif; ?>
                        <?php if (isset(auth()->user()->groups[0]) && in_array(auth()->user()->groups[0], ['superadmin', 'admin'])) : ?>
                            <?= $this->include('anime/animedetails/animeadmincontrol') ?>
                        <?php endif; ?>
                    </div>
                    <div class="film-description m-hide">
                        <div class="text"><?= $animetv['ani_synopsis'] ?>
                        </div>
                        <div class="film-text m-hide">
                            <?php echo $webdata['webname']; ?> is the best site to watch <strong><?= $animetv['ani_name'] ?></strong> SUB online, or
                            you can even watch <strong><?= $animetv['ani_name'] ?></strong> DUB in HD quality.
                        </div>
                        <div class="mba-block" style="display: block; text-align: center; margin: 1rem 0;">
                            <a href="" target="_blank" rel="nofollow">
                                <img style="width: 728px; height: auto; max-width: 100%;" src="" alt=""></a>
                        </div>
                    </div>
                    <div class="share-buttons share-buttons-min mt-3">
                                <div class="share-buttons-block" style="padding-bottom: 0 !important;">
                                    <div class="share-icon"></div>
                                    <div class="sbb-title">
                                        <span>Share Anime</span>
                                        <p class="mb-0">to your friends</p>
                                    </div>
                                    <div class="addthis_inline_share_toolbox"></div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                    <div class="anisc-info-wrap">
                        <div class="anisc-info">
                            <?php if (!empty($animetv['ani_jname'])) : ?>
                                <div class="item item-title">
                                    <span class="item-head">Japanese:</span>
                                    <span class="name"><?= $animetv['ani_jname'] ?></span>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($animetv['ani_synonyms'])) : ?>
                                <div class="item item-title">
                                    <span class="item-head">Synonyms:</span>
                                    <span class="name"><?= $animetv['ani_synonyms'] ?></span>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($animetv['ani_country'])) : ?>
                                <div class="item item-title">
                                    <span class="item-head">Country:</span>
                                    <span class="name"><?= $animetv['ani_country'] == 1 ? "Japanese" : ($animetv['ani_stats'] == 2 ? "Chinese" : "") ?></span>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($animetv['ani_aired'])) : ?>
                                <div class="item item-title">
                                    <span class="item-head">Aired:</span>
                                    <span class="name"><?= $animetv['ani_aired'] ?> to <?= $animetv['ani_aired_fin'] ?></span>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($animetv['ani_release_season'])) : ?>
                                <div class="item item-title">
                                    <span class="item-head">Premiered:</span>
                                    <span class="name"><?php
                                                        $seasons = [
                                                            1 => 'Winter',
                                                            2 => 'Spring',
                                                            3 => 'Summer',
                                                            4 => 'Fall'
                                                        ];
                                                        echo $seasons[$animetv['ani_release_season']] ?? 'Unknown';
                                                        ?></span>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($animetv['ani_time'])) : ?>
                                <div class="item item-title">
                                    <span class="item-head">Duration:</span>
                                    <span class="name"><?= $animetv['ani_time'] ?></span>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($animetv['ani_stats'])) : ?>
                                <div class="item item-title">
                                    <span class="item-head">Status:</span>
                                    <span class="name"><?= $animetv['ani_stats'] == 1 ? "Currently Airing" : ($animetv['ani_stats'] == 2 ? "Finished" : ($animetv['ani_stats'] == 3 ? "Not yet Aired" : "")) ?></span>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($animetv['ani_score'])) : ?>
                                <div class="item item-title">
                                    <span class="item-head">MAL Score:</span>
                                    <span class="name"><?= $animetv['ani_score'] ?></span>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($animetv['ani_genre'])) : ?>
                                <div class="item item-list">
                                    <span class="item-head">Genres:</span>
                                    <?php
                                    $genres = explode(',', $animetv['ani_genre']);
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
                            <?php if (!empty($animetv['ani_studio'])) : ?>
                                <div class="item">
                                    <span class="item-head">Studio:</span>
                                    <?php
                                    $studios = explode(',', $animetv['ani_studio']);
                                    foreach ($studios as $studio) {
                                        $studio = trim($studio);
                                        $studio_url = "https://myanimelist.net/company?q=" . urlencode($studio);
                                        echo "<a href='$studio_url'>$studio</a>";
                                        if ($studio != end($studios)) {
                                            echo " ";
                                        }
                                    }
                                    ?>
                                </div>
                            <?php endif; ?>
                            <?php if (!empty($animetv['ani_producers'])) : ?>
                                <div class="item">
                                    <span class="item-head">Studio:</span>
                                    <?php
                                    $producers = explode(',', $animetv['ani_producers']);
                                    foreach ($producers as $producer) {
                                        $producer = trim($producer);
                                        $studio_url = "https://myanimelist.net/company?q=" . urlencode($producer);
                                        echo "<a href='$studio_url'>$producer</a>";
                                        if ($producer != end($producers)) {
                                            echo " ";
                                        }
                                    }
                                    ?>
                                </div>
                            <?php endif; ?>
                            <div class="item">
                                <span class="item-head">Resources:</span>
                                <?php
                                $sites = json_decode($animetv['ani_offical_site']);
                                foreach ($sites as $site) {
                                ?>
                                    <a href='<?php echo $site->url; ?>' class='name'>
                                        <span><?php echo $site->name; ?></span>
                                    </a>
                                <?php
                                }
                                ?>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
</div>