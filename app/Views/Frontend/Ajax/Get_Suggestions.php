<?php $count = 0; ?>
<?php foreach ($SuggestionsData as $AnimeData) : ?>
    <?php if ($count++ === 5) break; ?>
    <a href="/anime/<?php echo $AnimeData['uid'] ?>/<?php
                                                    $slug = trim(preg_replace("/[^\w\s\-]+/", "", $AnimeData['ani_name']), " ");
                                                    $slug = preg_replace("/\s+|--/", "_", $slug);
                                                    $slug = preg_replace("/\bii\b/", "II", $slug);
                                                    $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                    $slug = ucfirst($slug);
                                                    echo $slug;
                                                    ?>" class="nav-item">
        <div class="film-poster">
            <img class="film-poster-img ls-is-cached lazyloaded" src="<?php echo $AnimeData['ani_poster'] ?>">
        </div>
        <div class="srp-detail">
            <h3 class="film-name" data-jname="<?php echo $AnimeData['ani_jname'] ?>"><?php echo $AnimeData['ani_name'] ?></h3>

            <div class="alias-name"><?php echo $AnimeData['ani_jname'] ?></div>

            <div class="film-infor">
                <span> <?php
                        $seasons = [
                            1 => 'Winter',
                            2 => 'Spring',
                            3 => 'Summer',
                            4 => 'Fall'
                        ];
                        echo $seasons[$AnimeData['ani_release_season']] ?? 'Unknown';
                        ?> <?php echo $AnimeData['ani_release'] ?></span><i class="dot"></i><?php
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
                                                                                            ?><i class="dot"></i><span><?php echo $AnimeData['ani_time'] ?></span>
            </div>
        </div>
        <div class="clearfix"></div>
    </a>
<?php endforeach; ?>