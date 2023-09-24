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
                                foreach ($todayepisode as $todayview) : ?>
                                    <li class="item-top">
                                        <div class="film-number"><span><?= $key ?></span></div>
                                        <div class="film-poster item-qtip loaded">
                                            <img class="film-poster-img ls-is-cached lazyloaded" src="<?= $todayview['ani_poster'] ?>">
                                        </div>
                                        <div class="film-detail">
                                            <div class="film-name">
                                                <h7>
                                                    <a href="anime/<?= $todayview['uid'] ?>/<?= urlencode($todayview['ani_name']) ?>" class="dynamic-name"><?= $todayview['ani_name'] ?></a>
                                                </h7>
                                            </div>
                                            <div class="film-name">
                                                <a href="watch?anime=<?= urlencode($todayview['ani_name']) ?>&uid=<?= $todayview['uid'] ?>&eps=<?= $todayview['ep_id_name'] ?>" class="dynamic-name">Episode-<?= $todayview['ep_id_name'] ?></a>
                                            </div>
                                            <div class="fd-infor">
                                                <div class="tick">
                                                    <div class="tick-item tick-type"><?php
                                                                                        if ($todayview['ani_type'] == 1) {
                                                                                            echo "TV";
                                                                                        } elseif ($todayview['ani_type'] == 2) {
                                                                                            echo "Movie";
                                                                                        } elseif ($todayview['ani_type'] == 3) {
                                                                                            echo "Ova";
                                                                                        } elseif ($todayview['ani_type'] == 4) {
                                                                                            echo "Ona";
                                                                                        } elseif ($todayview['ani_type'] == 5) {
                                                                                            echo "Special";
                                                                                        }
                                                                                        ?></div>
                                                    <div class="tick-item tick-score"><?= $todayview['ani_score'] ?></div>
                                                    <span class="fdi-item ml-2"><i class="fas fa-eye mr-2"></i><?= $todayview['ep_view'] ?></span>
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
                                foreach ($weekepisode as $weekview) : ?>
                                    <li class="item-top">
                                        <div class="film-number"><span><?= $key ?></span></div>
                                        <div class="film-poster item-qtip loaded">
                                            <img class="film-poster-img ls-is-cached lazyloaded" src="<?= $weekview['ani_poster'] ?>">
                                        </div>
                                        <div class="film-detail">
                                            <div class="film-name">
                                                <h7>
                                                    <a href="anime/<?= $weekview['uid'] ?>/<?= urlencode($weekview['ani_name']) ?>" class="dynamic-name"><?= $weekview['ani_name'] ?></a>
                                                </h7>
                                            </div>
                                            <div class="film-name">
                                                <a href="watch?anime=<?= urlencode($weekview['ani_name']) ?>&uid=<?= $weekview['uid'] ?>&eps=<?= $weekview['ep_id_name'] ?>" class="dynamic-name">Episode-<?= $weekview['ep_id_name'] ?></a>
                                            </div>
                                            <div class="fd-infor">
                                                <div class="tick">
                                                    <div class="tick-item tick-type"><?php
                                                                                        if ($weekview['ani_type'] == 1) {
                                                                                            echo "TV";
                                                                                        } elseif ($weekview['ani_type'] == 2) {
                                                                                            echo "Movie";
                                                                                        } elseif ($weekview['ani_type'] == 3) {
                                                                                            echo "Ova";
                                                                                        } elseif ($weekview['ani_type'] == 4) {
                                                                                            echo "Ona";
                                                                                        } elseif ($weekview['ani_type'] == 5) {
                                                                                            echo "Special";
                                                                                        }
                                                                                        ?></div>
                                                    <div class="tick-item tick-score"><?= $weekview['ani_score'] ?></div>
                                                    <span class="fdi-item ml-2"><i class="fas fa-eye mr-2"></i><?= $weekview['ep_view_month'] ?></span>
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
                                foreach ($yearsepisode as $yearsview) : ?>
                                    <li class="item-top">
                                        <div class="film-number"><span><?= $key ?></span></div>
                                        <div class="film-poster item-qtip loaded">
                                            <img class="film-poster-img ls-is-cached lazyloaded" src="<?= $yearsview['ani_poster'] ?>">
                                        </div>
                                        <div class="film-detail">
                                            <div class="film-name">
                                                <h7>
                                                    <a href="anime/<?= $yearsview['uid'] ?>/<?= urlencode($yearsview['ani_name']) ?>" class="dynamic-name"><?= $yearsview['ani_name'] ?></a>
                                                </h7>
                                            </div>
                                            <div class="film-name">
                                                <a href="watch?anime=<?= urlencode($yearsview['ani_name']) ?>&uid=<?= $yearsview['uid'] ?>&eps=<?= $yearsview['ep_id_name'] ?>" class="dynamic-name">Episode-<?= $yearsview['ep_id_name'] ?></a>
                                            </div>
                                            <div class="fd-infor">
                                                <div class="tick">
                                                    <div class="tick-item tick-type"><?php
                                                                                        if ($yearsview['ani_type'] == 1) {
                                                                                            echo "TV";
                                                                                        } elseif ($yearsview['ani_type'] == 2) {
                                                                                            echo "Movie";
                                                                                        } elseif ($yearsview['ani_type'] == 3) {
                                                                                            echo "Ova";
                                                                                        } elseif ($yearsview['ani_type'] == 4) {
                                                                                            echo "Ona";
                                                                                        } elseif ($yearsview['ani_type'] == 5) {
                                                                                            echo "Special";
                                                                                        }
                                                                                        ?></div>
                                                    <div class="tick-item tick-score"><?= $yearsview['ani_score'] ?></div>
                                                    <span class="fdi-item ml-2"><i class="fas fa-eye mr-2"></i><?= $yearsview['ep_view_years'] ?></span>
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