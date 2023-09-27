<div id="main-sidebar">
    <?= $this->include('anime/extend/genrediv') ?>
    <section class="block_area block_area_sidebar block_area-realtime">
        <div class="block_area-header">
            <div class="float-left bah-heading mr-2">
                <h2 class="cat-heading">Top Episode
                </h2>
            </div>
            <div class="float-right bah-tab-min">
                <ul class="nav nav-pills nav-fill nav-tabs anw-tabs">
                    <li class="nav-item"><a data-toggle="tab" href="#top-viewed-today" class="nav-link active">Today</a></li>
                    <li class="nav-item"><a data-toggle="tab" href="#top-viewed-week" class="nav-link">Week</a></li>
                    <li class="nav-item"><a data-toggle="tab" href="#top-viewed-month" class="nav-link">Month</a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="block_area-content">
            <div class="cbox cbox-list cbox-realtime">
                <div class="cbox-content">
                    <div class="tab-content">
                        <div id="top-viewed-today" class="anif-block-ul anif-block-chart tab-pane active">
                            <ul class="ulclear">
                                <?php $key = 1;
                                foreach ($episodeviews['today'] as $today) : ?>
                                    <li class="item-top">
                                        <div class="film-number"><span><?= $key ?></span></div>
                                        <div class="film-poster item-qtip loaded">
                                            <img class="film-poster-img ls-is-cached lazyloaded" src="<?= $today['ani_poster'] ?>">
                                        </div>
                                        <div class="film-detail">
                                            <div class="film-name">
                                                <h7>
                                                    <a href="anime/<?= $today['ep_uid'] ?>/<?php
                                                                                            $slug = trim(preg_replace("/[^\w\s\-]+/", "", $today['ani_name']), " ");
                                                                                            $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                            $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                            $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                            $slug = ucfirst($slug);
                                                                                            echo $slug;
                                                                                            ?>" class="dynamic-name"><?= $today['ani_name'] ?></a>
                                                </h7>
                                            </div>
                                            <div class="film-name">
                                                <a href="watch?anime=<?php
                                                                        $nameParts = explode(',', $today['ani_name'], 2);
                                                                        if (count($nameParts) > 1) {
                                                                            $name = trim($nameParts[1]);
                                                                        } else {
                                                                            $name = $today['ani_name'];
                                                                        }
                                                                        $slug = strtolower(str_replace(' ', '-', implode(' ', array_slice(explode(' ', preg_replace('/[\/*!\^%&\/()=?.:",]/', '', $name)), 0, 10))));
                                                                        echo $slug;
                                                                        ?>&uid=<?= $today['ep_uid'] ?>&eps=<?= $today['ep_id'] ?>" class="dynamic-name">Episode-<?= $today['ep_id'] ?></a>
                                            </div>
                                            <div class="fd-infor">
                                                <div class="tick">
                                                    <div class="tick-item tick-type"><?php
                                                                                        if ($today['ani_type'] == 1) {
                                                                                            echo "TV";
                                                                                        } elseif ($today['ani_type'] == 2) {
                                                                                            echo "Movie";
                                                                                        } elseif ($today['ani_type'] == 3) {
                                                                                            echo "Ova";
                                                                                        } elseif ($today['ani_type'] == 4) {
                                                                                            echo "Ona";
                                                                                        } elseif ($today['ani_type'] == 5) {
                                                                                            echo "Special";
                                                                                        }
                                                                                        ?></div>
                                                    <div class="tick-item tick-score"><?= $today['ani_score'] ?></div>
                                                    <span class="fdi-item ml-2"><i class="fas fa-eye mr-2"></i><?= $today['ep_today'] ?></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </li>
                                <?php $key++;
                                endforeach; ?>
                            </ul>
                        </div>
                        <div id="top-viewed-week" class="anif-block-ul anif-block-chart tab-pane">
                            <ul class="ulclear">
                                <?php $key = 1;
                                foreach ($episodeviews['weeky']  as $weeky) : ?>
                                    <li class="item-top">
                                        <div class="film-number"><span><?= $key ?></span></div>
                                        <div class="film-poster item-qtip loaded">
                                            <img class="film-poster-img ls-is-cached lazyloaded" src="<?= $weeky['ani_poster'] ?>">
                                        </div>
                                        <div class="film-detail">
                                            <div class="film-name">
                                                <h7>
                                                    <a href="anime/<?= $weeky['ep_uid'] ?>/<?php
                                                                                            $slug = trim(preg_replace("/[^\w\s\-]+/", "", $weeky['ani_name']), " ");
                                                                                            $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                            $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                            $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                            $slug = ucfirst($slug);
                                                                                            echo $slug;
                                                                                            ?>" class="dynamic-name"><?= $weeky['ani_name'] ?></a>
                                                </h7>
                                            </div>
                                            <div class="film-name">
                                                <a href="watch?anime=<?php
                                                                        $nameParts = explode(',', $weeky['ani_name'], 2);
                                                                        if (count($nameParts) > 1) {
                                                                            $name = trim($nameParts[1]);
                                                                        } else {
                                                                            $name = $weeky['ani_name'];
                                                                        }
                                                                        $slug = strtolower(str_replace(' ', '-', implode(' ', array_slice(explode(' ', preg_replace('/[\/*!\^%&\/()=?.:",]/', '', $name)), 0, 10))));
                                                                        echo $slug;
                                                                        ?>&uid=<?= $weeky['ep_uid'] ?>&eps=<?= $weeky['ep_id'] ?>" class="dynamic-name">Episode-<?= $weeky['ep_id'] ?></a>
                                            </div>
                                            <div class="fd-infor">
                                                <div class="tick">
                                                    <div class="tick-item tick-type"><?php
                                                                                        if ($weeky['ani_type'] == 1) {
                                                                                            echo "TV";
                                                                                        } elseif ($weeky['ani_type'] == 2) {
                                                                                            echo "Movie";
                                                                                        } elseif ($weeky['ani_type'] == 3) {
                                                                                            echo "Ova";
                                                                                        } elseif ($weeky['ani_type'] == 4) {
                                                                                            echo "Ona";
                                                                                        } elseif ($weeky['ani_type'] == 5) {
                                                                                            echo "Special";
                                                                                        }
                                                                                        ?></div>
                                                    <div class="tick-item tick-score"><?= $weeky['ani_score'] ?></div>
                                                    <span class="fdi-item ml-2"><i class="fas fa-eye mr-2"></i><?= $weeky['ep_weeky'] ?></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </li>
                                <?php $key++;
                                endforeach; ?>
                            </ul>
                        </div>
                        <div id="top-viewed-month" class="anif-block-ul anif-block-chart tab-pane">
                            <ul class="ulclear">
                                <?php $key = 1;
                                foreach ($episodeviews['month'] as $month) : ?>
                                    <li class="item-top">
                                        <div class="film-number"><span><?= $key ?></span></div>
                                        <div class="film-poster item-qtip loaded">
                                            <img class="film-poster-img ls-is-cached lazyloaded" src="<?= $month['ani_poster'] ?>">
                                        </div>
                                        <div class="film-detail">
                                            <div class="film-name">
                                                <h7>
                                                    <a href="anime/<?= $month['ep_uid'] ?>/<?php
                                                                                            $slug = trim(preg_replace("/[^\w\s\-]+/", "", $month['ani_name']), " ");
                                                                                            $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                            $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                            $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                            $slug = ucfirst($slug);
                                                                                            echo $slug;
                                                                                            ?>" class="dynamic-name"><?= $month['ani_name'] ?></a>
                                                </h7>
                                            </div>
                                            <div class="film-name">
                                                <a href="watch?anime=<?php
                                                                        $nameParts = explode(',', $month['ani_name'], 2);
                                                                        if (count($nameParts) > 1) {
                                                                            $name = trim($nameParts[1]);
                                                                        } else {
                                                                            $name = $month['ani_name'];
                                                                        }
                                                                        $slug = strtolower(str_replace(' ', '-', implode(' ', array_slice(explode(' ', preg_replace('/[\/*!\^%&\/()=?.:",]/', '', $name)), 0, 10))));
                                                                        echo $slug;
                                                                        ?>&uid=<?= $month['ep_uid'] ?>&eps=<?= $month['ep_id'] ?>" class="dynamic-name">Episode-<?= $month['ep_id'] ?></a>
                                            </div>
                                            <div class="fd-infor">
                                                <div class="tick">
                                                    <div class="tick-item tick-type"><?php
                                                                                        if ($month['ani_type'] == 1) {
                                                                                            echo "TV";
                                                                                        } elseif ($month['ani_type'] == 2) {
                                                                                            echo "Movie";
                                                                                        } elseif ($month['ani_type'] == 3) {
                                                                                            echo "Ova";
                                                                                        } elseif ($month['ani_type'] == 4) {
                                                                                            echo "Ona";
                                                                                        } elseif ($month['ani_type'] == 5) {
                                                                                            echo "Special";
                                                                                        }
                                                                                        ?></div>
                                                    <div class="tick-item tick-score"><?= $month['ani_score'] ?></div>
                                                    <span class="fdi-item ml-2"><i class="fas fa-eye mr-2"></i><?= $month['ep_month'] ?></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </li>
                                <?php $key++;
                                endforeach; ?>
                            </ul>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </section>


    <section class="block_area block_area_sidebar block_area-connecting">
        <div class="block_area-header">
            <div class="float-left bah-heading mr-2">
                <h2 class="cat-heading">Community Posts</h2>
            </div>
            <div class="float-right viewmore"><a class="btn" href="/community/board" title="View more">View more<i class="fas fa-angle-right ml-2"></i></a></div>
            <div class="clearfix"></div>
        </div>
        <div class="block_area-content">
            <div class="zr-connect zr-connect-list">
                <div class="connecting-list">
                    <?php foreach ($lastboard as $lastboard) : ?>
                        <div class="item">
                            <div class="gi-top d-flex justify-content-between align-items-center">
                                <div class="ztag">
                                    <span class="zt-<?php
                                                    switch ($lastboard['post_tag']) {
                                                        case 1:
                                                            echo 'red';
                                                            break;
                                                        case 2:
                                                            echo 'blue';
                                                            break;
                                                        case 3:
                                                            echo 'green';
                                                            break;
                                                        case 4:
                                                            echo 'yellow';
                                                            break;
                                                        case 5:
                                                            echo 'purple';
                                                            break;
                                                        case 6:
                                                            echo 'orange';
                                                            break;
                                                        default:
                                                            echo 'Unknown';
                                                    }
                                                    ?> mr-2">#<?php
                                                                switch ($lastboard['post_tag']) {
                                                                    case 1:
                                                                        echo 'Updates';
                                                                        break;
                                                                    case 2:
                                                                        echo 'General';
                                                                        break;
                                                                    case 3:
                                                                        echo 'Suggestion';
                                                                        break;
                                                                    case 4:
                                                                        echo 'Question';
                                                                        break;
                                                                    case 5:
                                                                        echo 'Discussion';
                                                                        break;
                                                                    case 6:
                                                                        echo 'Feedback';
                                                                        break;
                                                                    default:
                                                                        echo 'Unknown';
                                                                }
                                                                ?></span>
                                    <div class="time d-inline"><span>
                                            <i class="dot mr-2"></i>
                                            <?= $lastboard['created_at'] ?>
                                        </span></div>
                                </div>
                                <div class="gi-stats d-flex align-items-center">
                                    <div class="ml-4">
                                        <i class="fas fa-comment mr-1"></i>
                                        <?= $lastboard['post_id_count'] ?>
                                    </div>
                                </div>
                            </div>
                            <h4 class="item-name"><a href="community/post?pid=<?= $lastboard['post_id'] ?>&pcon=<?= urlencode($lastboard['post_head']) ?>">
                                    <?= $lastboard['post_head'] ?>
                                </a></h4>
                            <div class="subject">
                                <div>
                                    <?= $lastboard['post_content'] ?>
                                </div>
                            </div>
                            <div class="cn-owner">
                                <div class="profile-avatar">
                                    <img src="<?= $lastboard['avatar'] ?>">
                                </div>
                                <?php
                                $role = $lastboard['group'];
                                $roleToClass = [
                                    'superadmin' => 'user-name is-level-x is-level-b',
                                    'admin' => 'user-name is-level-x is-level-d',
                                    'mod' => 'user-name is-level-x is-level-a'
                                ];

                                $lastboardclass = $roleToClass[$role] ?? 'user-name';
                                ?>

                                <a href="/community/user/<?= $lastboard['username'] ?>" target="_blank" class="<?= $lastboardclass ?>">
                                    <?= $lastboard['username'] ?>
                                    <span><?= $lastboard['group'] ?></span>
                                </a>
                            </div>
                        </div>

                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </section>
</div>