<div class="anisc-poster">
    <div class="film-poster" style="position: relative;">
        <img src="<?= $animeData['ani_poster'] ?>" data-src="" class="film-poster-img ls-is-cached lazyloaded" alt="">
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
        <a href="/anime/<?= $animeData['uid'] ?>/<?= str_replace(' ', '_', $animeData['ani_name']) ?>" class="text-white dynamic-name" title="" style="opacity: 1;">
            <?= $animeData['ani_name'] ?>
        </a><br />
        <a href="/anime/<?= $animeData['uid'] ?>/<?= str_replace(' ', '_', $animeData['ani_jname']) ?>" class="text-white dynamic-name" title="" style="opacity: 1; font-size: 0.6em;">
            <?= $animeData['ani_jname'] ?>
        </a>
    </h2>
    <div class="film-stats">
        <div class="tick">
            <div class="tick-item tick-type"><?php
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
                                                ?></div>
            <?php if (!empty($animeData['ani_time'])) { ?>
                <div class="tick-item tick-time"><?= $animeData['ani_time'] ?></div>
            <?php } ?>
            <div class="tick-item tick-release"><?= $animeData['ani_release'] ?></div>
            <div class="tick-item tick-stats"><?= $animeData['ani_stats'] == 1 ? "Currently Airing" : ($animeData['ani_stats'] == 2 ? "Finished" : ($animeData['ani_stats'] == 3 ? "Not yet Aired" : "")) ?></div>
            <div class="tick-item tick-source"><?= ($animeData['ani_source'] == 1) ? "Manga" : (($animeData['ani_source'] == 2) ? "LightNovel" : "Other") ?></div>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="film-description m-hide"></div>
    <div class="film-text m-hide mb-3">
        <?= substr($animeData['ani_synopsis'], 0, 250) . "..." ?>
    </div>
    <div class="block">
        <a href="/anime/<?= $animeData['uid'] ?>/<?= preg_replace('/[\s\/]+/', '-', $animeData['ani_name']) ?>" class="btn btn-xs btn-light">
            <i class="fas fa-book-open mr-2"></i> View Details
        </a>
    </div>
</div>
<div id="vote-info"></div>
</div>
</div>