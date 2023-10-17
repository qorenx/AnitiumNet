<section class="block_area block_area_sidebar block_area-genres">
    <div class="block_area-header">
        <div class="float-left bah-heading mr-4">
            <h2 class="cat-heading">Genres</h2>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="block_area-content">
        <div class="cbox cbox-genres">
            <ul class="ulclear color-list sb-genre-list sb-genre-less">
                <?php
                $GenreData = [
                    "action",
                    "adventure",
                    "cars",
                    "comedy",
                    "dementia",
                    "demons",
                    "drama",
                    "ecchi",
                    "fantasy",
                    "game",
                    "harem",
                    "historical",
                    "horror",
                    "josei",
                    "kids",
                    "magic",
                    "martial+arts",
                    "mecha",
                    "military",
                    "music",
                    "mystery",
                    "parody",
                    "police",
                    "psychological",
                    "romance",
                    "samurai",
                    "school",
                    "sci-fi",
                    "seinen",
                    "shoujo",
                    "shoujo+ai",
                    "shounen",
                    "shounen+Ai",
                    "slice+of+life",
                    "space",
                    "sports",
                    "super+power",
                    "supernatural",
                    "thriller",
                    "vampire",
                    "yaoi",
                    "yuri",
                ];

                foreach ($GenreData as $genre) {
                    $title = ucwords(str_replace('+', ' ', $genre));
                    echo "<li class=\"nav-item\"> <a class=\"nav-link\" href=\"" . base_url() . "genre/$genre\" title=\"$title\">$title</a> </li>";
                }
                ?>
            </ul>
            <div class="clearfix"></div>
            <button class="btn btn-sm btn-block btn-showmore mt-2"></button>
        </div>
    </div>
</section>