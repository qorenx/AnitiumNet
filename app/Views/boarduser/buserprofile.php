<?= $this->include('anime/templates/header') ?>

<body data-page="page_home">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('anime/templates/head') ?>
        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page layout-award">
        <div class="award-bg">
            <div class="award-bg-img" style="background-image: url(/files/images/cover.png);"></div>
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
                                        <a href="" target="_blank" class="user-name"><?= $getuserdata->username ?></a>
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
                                    <div class="film_list-wrap">

                                        <?php foreach (array_slice($animelist, 0, 5) as $key => $value) : ?>
                                            <div class="flw-item">
                                                <div class="film-poster">
                                                    <div class="tick ltr">
                                                        <div class="tick-item tick"><?php
                                                                                    switch ($value['status']) {
                                                                                        case 1:
                                                                                            echo "Watching";
                                                                                            break;
                                                                                        case 2:
                                                                                            echo "On-Hold";
                                                                                            break;
                                                                                        case 3:
                                                                                            echo "PlantoWatch";
                                                                                            break;
                                                                                        case 4:
                                                                                            echo "Dropped";
                                                                                            break;
                                                                                        case 5:
                                                                                            echo "Completed";
                                                                                            break;
                                                                                        default:
                                                                                            echo "Unknown";
                                                                                            break;
                                                                                    }
                                                                                    ?></div>
                                                    </div>
                                                    <img class="film-poster-img lazyloaded" src="<?php echo $value['ani_poster']; ?>">
                                                    <a href="<?php echo base_url('anime/' . $value['uid'] . '/' . $value['ani_name']); ?>" class="film-poster-ahref item-qtip loaded"><i class="fas fa-play"></i></a>
                                                </div>
                                                <div class="film-detail">
                                                    <h3 class="film-name"><a href="<?php echo base_url('anime/' . $value['uid'] . '/' . $value['ani_name']); ?>"><?= $value['ani_name'] ?></a></h3>
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
                                        <a href="/community/user/<?= $getuserdata->username ?>/all" class="btn sbtn btn-block btn-secondary">View more</a>
                                    </div>
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
                                                                    <i class="fas fa-question-circle mr-2"></i><?= $value['created_at'] ?>
                                                                </div>
                                                            </div>
                                                            <div class="subject">
                                                                <div>
                                                                    <strong> <?= ucfirst($value['username']) ?></strong>
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
                                                                        $post = "<a href='" . base_url('community/post/' . $value['post_id'] . '/' . str_replace(" ", "-", $value['post_head'])) . "' class='highlight-text'><span style='color:red'>" . $value['post_head'] . "</span></a>  ";
                                                                        echo $post;
                                                                    } elseif ($value['from'] == 3) {
                                                                        $post = "<a href='" . base_url('anime/' . $value['post_id'] . '/' . str_replace(" ", "-", $value['ani_name'])) . "' class='highlight-text'><span style='color:red'>" . $value['ani_name'] . "</span></a>";
                                                                        $watch = "<a href='" . base_url('/watch?anime=' . urlencode($value['ani_name']) . '&uid=' . $value['post_id'] . '&eps=' . $value['post_ep'])  . "'class='highlight-text'>on <span style='color:blue'>" . "Episode-" . $value['post_ep'] . "</span></a>";
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
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js">
        </script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/js-cookie@rc/dist/js.cookie.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>files/js/app.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>files/js/comman.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>files/js/movie.js"></script>
        <link rel="stylesheet" href="<?php echo base_url(); ?>files/css/jquery-ui.css">
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>files/js/function.js"></script>
    </div>
    </div>
</body>

</html>