<?= $this->include('profile/extend/header') ?>

<body data-page="page_home">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('anime/extend/templates/head') ?>
        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page layout-award">
            <div class="award-bg">
                <div class="award-bg-img" style="background-image: url(/assest/images/cover.png);"></div>
            </div>
            <div class="container">
                <div class="award-inner">
                    <div class="ai_-welcome text-center">
                        Hi! I'm <span><?= $getuserdata->username ?></span>
                    </div>
                    <div class="my-award d-flex justify-content-between">
                        <div class="maw-left">
                            <div class="ai_-about d-flex">
                                <div class="aa-item aa-avatar">
                                    <div class="profile-avatar d-inline-block ">
                                        <img src="<?= $getuserdata->avatar ?>">
                                    </div>
                                </div>
                                <div class="aa-item">
                                    <div class="aa-title ">
                                        <?php

                                        use CodeIgniter\Shield\Auth;

                                        $role = $getgroup[0]->group;;
                                        $roleToClass = [
                                            'superadmin' => 'user-name is-level-x is-level-b',
                                            'admin' => 'user-name is-level-x is-level-d',
                                            'mod' => 'user-name is-level-x is-level-a'
                                        ];

                                        $getgroupclass = $roleToClass[$role] ?? 'user-name';
                                        ?>
                                        <a href="" target="_blank" class="<?= $getgroupclass ?>"><?= $getuserdata->username ?></a>
                                    </div>
                                    <div class="aa-result">
                                        <div class="user-name is-level-x">
                                            <span><?php echo $getgroup[0]->group; ?></span>
                                        </div>
                                    </div>
                                    <small>Joined: <?= $getuserdata->created_at ?></small>
                                </div>
                            </div>
                            <div class="block_area block_area_home my-watchlist">
                                <div class="block_area-header">
                                    <div class="float-left bah-heading mr-4">
                                        <h2 class="cat-heading">Watch List</h2>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="block_area-content block_area-list film_list film_list-grid">
                                    <?php if ($getuserdata->watchlist_status == 0) : ?>
                                        <div class="d-block p-5 text-center notpublic">
                                            Watch List is not public.
                                        </div>
                                    <?php else : ?>
                                        <div class="film_list-wrap">
                                            <?php foreach (array_slice($animelist, 0, 10) as $key => $value) : ?>
                                                <div class="flw-item">
                                                    <div class="film-poster">
                                                        <div class="tick ltr">
                                                            <div class="tick-item tick"><?php
                                                                                        switch ($value['status']) {
                                                                                            case 1:
                                                                                                echo "Favorite";
                                                                                                break;
                                                                                            case 2:
                                                                                                echo "Watching";
                                                                                                break;
                                                                                            case 3:
                                                                                                echo "On-Hold";
                                                                                                break;
                                                                                            case 4:
                                                                                                echo "PlantoWatch";
                                                                                                break;
                                                                                            case 5:
                                                                                                echo "Dropped";
                                                                                                break;
                                                                                            case 6:
                                                                                                echo "Completed";
                                                                                                break;
                                                                                            default:
                                                                                                echo "Unknown";
                                                                                                break;
                                                                                        }
                                                                                        ?></div>
                                                        </div>
                                                        <img class="film-poster-img lazyloaded" src="<?php echo $value['ani_poster']; ?>">
                                                        <a class="film-poster-ahref" data-id="<?php echo $value['uid'] ?>" href="<?php echo base_url('anime/' . $value['uid'] . '/' . urlencode($value['ani_name'])); ?>"><i class="fas fa-play"></i></a>
                                                    </div>
                                                    <div class="film-detail">
                                                        <h3 class="film-name"><a href="<?php echo base_url('anime/' . $value['uid'] . '/' . urlencode($value['ani_name'])); ?>"><?= $value['ani_name'] ?></a></h3>
                                                        <div class="fd-infor">
                                                            <span class="fdi-item"><?php echo substr($value['created_at'], 0, 10); ?></span>
                                                        </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </div>
                                            <?php endforeach; ?>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="py-3">
                                            <a href="/community/user/<?= $getuserdata->username ?>/all?sort=" class="btn sbtn btn-block btn-secondary">View more</a>
                                        </div>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>

                        <div class="maw-right">
                            <div class="wideview">
                                <div class="wv wv-mine">
                                    <div class="wv-list">
                                        <div class="wv-title d-flex align-items-center">
                                            <div class="name mr-3">Latest Activities</div>
                                        </div>
                                        <div id="im-latest" class="tab-pane">
                                            <div class="wv-ul">
                                                <?php foreach (array_slice($getybcomment, 0, 15) as $key => $value) : ?>
                                                    <div class="item d-flex justify-content-between">
                                                        <div class="item-connect">
                                                            <div class="connect-inner">
                                                                <img style="border-radius: 50% 50% 50% 50%;" src="<?= htmlspecialchars($value['avatar'], ENT_QUOTES, 'UTF-8') ?>" width="40" height="40">
                                                            </div>
                                                        </div>
                                                        <div class="item-inner">
                                                            <div class="sts d-flex justify-content-between align-items-center">
                                                                <div class="time">
                                                                    <i class="<?php
                                                                                switch ($value['from']) {
                                                                                    case 1:
                                                                                        echo "fas fa-question-circle mr-2";
                                                                                        break;
                                                                                    case 2:
                                                                                    case 3:
                                                                                        echo "fas fa-comment mr-2";
                                                                                        break;
                                                                                }
                                                                                ?>"></i><?php
                                                                                        $datetime1 = new DateTime(); // current datetime
                                                                                        $datetime2 = new DateTime($value['created_at']);
                                                                                        $interval = $datetime1->diff($datetime2);

                                                                                        $year = $interval->format('%y');
                                                                                        $month = $interval->format('%m');
                                                                                        $day = $interval->format('%d');
                                                                                        $hour = $interval->format('%h');
                                                                                        $minute = $interval->format('%i');

                                                                                        if ($year >= 1)
                                                                                            echo $year . " year(s) ago";
                                                                                        else if ($month >= 1)
                                                                                            echo $month . " month(s) ago";
                                                                                        else if ($day >= 1)
                                                                                            echo $day . " day(s) ago";
                                                                                        else if ($hour >= 1)
                                                                                            echo $hour . " hour(s) ago";
                                                                                        else
                                                                                            echo $minute . " minute(s) ago";
                                                                                        ?>
                                                                </div>
                                                            </div>
                                                            <div class="subject">
                                                                <div>
                                                                    <strong><?= $value['username'] ?></strong>
                                                                    <?php
                                                                    if ($value['from'] == 1) {
                                                                        echo "created Post ";
                                                                    } elseif ($value['from'] == 2) {
                                                                        echo "commented on Post ";
                                                                    } elseif ($value['from'] == 3) {
                                                                        echo "commented on ";
                                                                    }
                                                                    ?>
                                                                    <?php
                                                                    if ($value['from'] == 1 || $value['from'] == 2) {
                                                                        $post = "<a href='" . base_url('community/post?pid=' . $value['post_id'] . '&pcon=' . str_replace(" ", "-", $value['post_head'])) . "' class='highlight-text'><span style='color:clay'>" . $value['post_head'] . "</span></a>  ";
                                                                        echo $post;
                                                                    } elseif ($value['from'] == 3) {
                                                                        $post = "<a href='" . base_url('anime/' . $value['post_id'] . '/' . urlencode($value['ani_name'])) . "' class='highlight-text'><span style='color:clay'>" . $value['ani_name'] . "</span></a>";
                                                                        $watch = "<a href='" . base_url('/watch?anime=' . urlencode($value['ani_name']) . '&uid=' . $value['post_id'] . '&eps=' . $value['post_ep'])  . "'class='highlight-text'>on <span style='color:clay'>" . "Episode-" . $value['post_ep'] . "</span></a>";
                                                                        echo $post . " " . $watch;
                                                                    } else {
                                                                        echo "";
                                                                    }
                                                                    ?>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                <?php endforeach; ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div id="mask-overlay"></div>
        <?= $this->include('anime/loadscript') ?>

    </div>
    </div>
</body>

</html>