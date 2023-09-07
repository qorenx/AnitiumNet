    <div class="qtip-content" aria-atomic="true">
        <div class="pre-qtip-content">
            <?php if (!empty($data['ani_name'])) : ?>
                <div class="pre-qtip-title"><?php echo $data['ani_name'] ?></div>
            <?php endif; ?>
            <div class="pre-qtip-detail">
                <?php if (!empty($data['ani_score'])) : ?>
                    <span class="pqd-li mr-3"><i class="fas fa-star mr-1 text-warning"></i><?php echo $data['ani_score'] ?></span>
                <?php endif; ?>

                <span class="pqd-li">
                    <div class="tick">
                        <div class="tick-item tick-quality">HD</div>
                        <?php if (!empty($data['ani_ep'])) : ?>
                            <div class="tick-item tick-eps"><?php echo $data['ani_ep'] ?></div>
                        <?php endif; ?>
                    </div>
                </span>
                <?php if (!empty($data['ani_type'])) : ?>
                    <span class="pqd-li badge badge-quality float-right ml-2"><?php $aniType = [1 => 'TV', 2 => 'Movie', 3 => 'Ova', 4 => 'Ona', 5 => 'Special'];
                                                                                echo $aniType[$data['ani_type']] ?? ''; ?></span>
                <?php endif; ?>

                <div class="clearfix"></div>
            </div>
            <div class="pre-qtip-description"><?php echo substr($data['ani_synopsis'], 0, 150) . '...'; ?></div>
            <?php if (!empty($data['ani_jname'])) : ?>
                <div class="pre-qtip-line"><span class="stick">Japanese:</span> <span class="stick-text"><?php echo $data['ani_jname'] ?></span></div>
            <?php endif; ?>
            <?php if (!empty($data['ani_synonyms'])) : ?>
                <div class="pre-qtip-line"><span class="stick">Synonyms:</span> <span class="stick-text"><?php echo $data['ani_synonyms'] ?></span></div>
            <?php endif; ?>
            <?php if (!empty($data['ani_aired'])) : ?>
                <div class="pre-qtip-line"><span class="stick">Aired:</span> <span class="stick-text"><?php echo $data['ani_aired'] ?></span></div>
            <?php endif; ?>
            <?php if (!empty($data['ani_stats'])) : ?>
                <div class="pre-qtip-line"><span class="stick">Status:</span> <span class="stick-text">
                        <?= $data['ani_stats'] == 1 ? "Currently Airing" : ($data['ani_stats'] == 2 ? "Finished" : ($data['ani_stats'] == 3 ? "Not yet Aired" : "")) ?>
                    </span></div>
            <?php endif; ?>
            <?php if (!empty($data['ani_genre'])) : ?>
                <div class="pre-qtip-line">
                    <span class="stick">Genres:</span>
                    <?php
                    $genres = explode(',', $data['ani_genre']);
                    $lastIndex = count($genres) - 1;
                    foreach ($genres as $index => $genre) {
                        $genre = trim($genre);
                        $genre_url = base_url() . "genre/$genre";
                        echo "<a href='$genre_url'>$genre</a>";
                        if ($index != $lastIndex) {
                            echo ", ";
                        }
                    }
                    ?>
                </div>
            <?php endif; ?>
            <div class="pre-qtip-button">
                <a href="/anime/<?php echo $data['uid'] ?>/<?php echo str_replace(' ', '-', $data['ani_name']); ?>" class="btn btn-block btn-play"><i class="fa fa-play mr-2"></i>Watch
                    now</a>
                <?php if (auth()->loggedIn()) : ?>
                    <?= $this->include('anime/extend/templates/qtipwatchadd') ?>
                <?php else : ?>
                    <?= $this->include('anime/extend/templates/qtipwatchnouseradd') ?>
                <?php endif; ?>
            </div>
        </div>
    </div>