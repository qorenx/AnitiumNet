<?= $this->include('anime/templates/header') ?>
<link rel="stylesheet" href="<?php echo base_url(); ?>files/css/profile.css">

<body data-page="page_profile" style="max-width:100%!important;width:100%!important;">
    <div id="wrapper" data-page="page_home">
        <div class="clearfix"></div>
        <?= $this->include('anime/templates/head') ?>

        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page layout-award">
        <div class="award-bg">
            <div class="award-bg-img" style="background-image: url(/files/images/cover.png);"></div>
        </div>
            <!--Begin: award-->
            <div class="container">
                <div class="award-inner">
                    <div class="ai_-tabs">
                        <a href="/community/board" class="active"><?php echo $webdata['webname']; ?> Community</a>
                    </div>
                    <div class="ai_-welcome text-center pb-0">
                        <div class="d-block"><?php echo $webdata['webname']; ?> Connect</div>
                    </div>
                    <div class="new-connect">
                        <div class="nc-wrap">
                            <div id="sticky" class="nc-sidebar">
                                <div class="page-title"><?php echo $webdata['webname']; ?> <span>COMMUNITY</span></div>
                                <div class="nc-cate">
                                    <a class="item active" href="<?= base_url('community/board') ?>">
                                        <div class="ztag"><span class="zt-white">#All</span>
                                        </div>
                                        <div class="number"></div>
                                    </a>

                                    <a class="item " href="<?= base_url('community/board/tag/updates') ?>">
                                        <div class="ztag"><span class="zt-red">#Updates</span></div>
                                        <div class="number"><?php echo $updates; ?> posts</div>
                                    </a>

                                    <a class="item " href="<?= base_url('community/board/tag/general') ?>">
                                        <div class="ztag"><span class="zt-blue">#General</span></div>
                                        <div class="number"><?php echo $general; ?> posts</div>
                                    </a>

                                    <a class="item " href="<?= base_url('community/board/tag/suggestion') ?>">
                                        <div class="ztag"><span class="zt-green">#Suggestion</span></div>
                                        <div class="number"><?php echo $suggestion; ?> posts</div>
                                    </a>

                                    <a class="item " href="<?= base_url('community/board/tag/question') ?>">
                                        <div class="ztag"><span class="zt-yellow">#Question</span></div>
                                        <div class="number"><?php echo $question; ?> posts</div>
                                    </a>

                                    <a class="item " href="<?= base_url('community/board/tag/discussion') ?>">
                                        <div class="ztag"><span class="zt-purple">#Discussion</span></div>
                                        <div class="number"><?php echo $discussion; ?> posts</div>
                                    </a>

                                    <a class="item " href="<?= base_url('community/board/tag/feedback') ?>">
                                        <div class="ztag"><span class="zt-orange">#Feedback</span></div>
                                        <div class="number"><?php echo $feedback; ?> posts</div>
                                    </a>

                                </div>
                            </div>
                            <div class="nc-body">
                                <div class="nc-head">
                                    <div class="is-left">
                                        <div class="zcate position-relative mr-3 d-hide">
                                            <a class="btn btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span id="currentTag"></span><i class="fas fa-sort ml-2"></i></a>
                                            <div class="dropdown-menu dropdown-menu-model dropdown-menu-normal">
                                                <a class="dropdown-item p-tag active" href="/community/board">#All<i class="fas fa-check ml-2"></i></a>

                                                <a class="dropdown-item p-tag " href="?tags=updates">#Updates</a>

                                                <a class="dropdown-item p-tag " href="?tags=general">#General</a>

                                                <a class="dropdown-item p-tag " href="?tags=suggestion">#Suggestion</a>

                                                <a class="dropdown-item p-tag " href="?tags=question">#Question</a>

                                                <a class="dropdown-item p-tag " href="?tags=discussion">#Discussion</a>

                                                <a class="dropdown-item p-tag " href="?tags=feedback">#Feedback</a>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="nc-head">
                                    <div class="is-right">
                                    <?php if (auth()->loggedIn()) : ?>
                                        <div class="is-create">
                                            <a href="/community/new-post" class="item-link active">
                                                <i class="fas fa-plus"></i><span class="ml-2">Create</span>
                                            </a>
                                        </div>
                                        <div class="is-manager ml-2">
                                            <a href="/community/my-post" class="item-link">
                                                <i class="fas fa-list"></i><span class="ml-2">My Posts</span>
                                            </a>
                                        </div>
                                        <?php endif; ?>
                                    </div>
                                </div>
                                <div class="nc-list">
                                    <div class="post-list">
                                        <script>
                                            function backgroundAction(url) {
                                                var xhttp = new XMLHttpRequest();
                                                xhttp.onreadystatechange = function() {
                                                    if (this.readyState == 4 && this.status == 200) {
                                                        location.reload();
                                                    }
                                                };
                                                xhttp.open("GET", url, true);
                                                xhttp.send();
                                            }
                                        </script>
                                        <?php $count = 0; ?>
                                        <?php foreach ($boardlastpost as $post) : ?>
                                            <?php if ($count < 10) : ?>

                                                <div class="item " id="post-<?= $post['post_id'] ?>">
                                                    <div class="is-vote is-vote-new">
                                                        <a class="is-up lp-btn-vote" id="postlink" href="javascript:void(0);" onclick="backgroundAction('<?= base_url('community/repsystem/postrep/' . $post['id']) ?>')"><i class="far fa-thumbs-up"></i></a>
                                                        <div class="is-point like-value"><?= $post['post_rep'] ?></div>

                                                        <a class="is-up lp-btn-vote" id="postlink" href="javascript:void(0);" onclick="backgroundAction('<?= base_url('community/repsystem/postdisrep/' . $post['id']) ?>')"><i class="far fa-thumbs-up"></i></a>
                                                        <div class="is-point dislike-value"><?= $post['post_disrep'] ?></div>
                                                    </div>
                                                    <div class="is-head">

                                                        <div class="ztag"><span class="zt-blue"><?php
                                                                                                switch ($post['post_tag']) {
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
                                                                                                ?></span></div>
                                                        <div class="is-dot mx-2"><i class="dot"></i></div>
                                                        <div class="is-time"><?= $post['created_at'] ?></div>
                                                    </div>
                                                    <div class="is-body">
                                                        <h4 class="item-name"><a href="<?= base_url('community/')?>post?pid=<?= $post['post_id'] ?>&pcon=<?= urlencode($post['post_head']) ?>"><?= $post['post_head'] ?></a></h4>
                                                        <p><?= $post['post_content'] ?></p>
                                                    </div>
                                                    <div class="is-bottom">
                                                        <div class="cn-owner">
                                                            <div class="profile-avatar">
                                                                <img src="<?= $post['avatar'] ?>">
                                                            </div>
                                                            <a href="/user/<?= $post['username'] ?>" target="_blank" class="user-name is-level-x is-level-a">
                                                                <i class="badg-level level-a up-4"></i>
                                                                <?= $post['username'] ?>
                                                            </a>
                                                        </div>
                                                        <div class="is-stats">
                                                            <div><i class="fas fa-comment mr-1"></i><?= $post['post_id_count'] ?></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php else : ?>
                                                <div class="item more-posts d-none" id="post-<?= $post['post_id'] ?>">
                                                    <div class="is-vote is-vote-new">
                                                        <a class="is-up lp-btn-vote" id="postlink" href="javascript:void(0);" onclick="backgroundAction('<?= base_url('community/repsystem/postrep/' . $post['id']) ?>')"><i class="far fa-thumbs-up"></i></a>
                                                        <div class="is-point like-value"><?= $post['post_rep'] ?></div>

                                                        <a class="is-up lp-btn-vote" id="postlink" href="javascript:void(0);" onclick="backgroundAction('<?= base_url('community/repsystem/postdisrep/' . $post['id']) ?>')"><i class="far fa-thumbs-up"></i></a>
                                                        <div class="is-point dislike-value"><?= $post['post_disrep'] ?></div>
                                                    </div>
                                                    <div class="is-head">

                                                        <div class="ztag"><span class="zt-blue"><?php
                                                                                                switch ($post['post_tag']) {
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
                                                                                                ?></span></div>
                                                        <div class="is-dot mx-2"><i class="dot"></i></div>
                                                        <div class="is-time"><?= $post['created_at'] ?></div>
                                                    </div>
                                                    <div class="is-body">
                                                        <h4 class="item-name"><a href="<?= base_url('community/')?>post?pid=<?= $post['post_id'] ?>&pcon=<?= urlencode($post['post_head']) ?>"><?= $post['post_head'] ?></a></h4>
                                                        <p><?= $post['post_content'] ?></p>
                                                    </div>
                                                    <div class="is-bottom">
                                                        <div class="cn-owner">
                                                            <div class="profile-avatar">
                                                                <img src="<?= $post['avatar'] ?>">
                                                            </div>
                                                            <a href="/user/<?= $post['username'] ?>" target="_blank" class="user-name is-level-x is-level-a">
                                                                <i class="badg-level level-a up-4"></i>
                                                                <?= $post['username'] ?>
                                                            </a>
                                                        </div>
                                                        <div class="is-stats">
                                                            <div><i class="fas fa-comment mr-1"></i><?= $post['post_id_count'] ?></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php endif; ?>
                                            <?php $count++; ?>
                                        <?php endforeach; ?>

                                        <?php if (count($boardlastpost) > 10) : ?>
                                            <div class="loading-relative" id="loading-data">
                                                <button class="btn-primary loading" onclick="pagination()">
                                                    <span>View More</span>
                                                </button>
                                            </div>
                                        <?php endif; ?>

                                        <script>
                                            function pagination() {
                                                jQuery(".more-posts.d-none").slice(0, 10).removeClass("d-none");
                                                jQuery(".more-posts:not(.d-none)").slice(0, 10).fadeOut(0);
                                                jQuery(".more-posts:not(.d-none)").slice(0, 10).fadeIn(400);
                                                if (jQuery(".more-posts.d-none").length == 0) {
                                                    jQuery(".show-more").remove();
                                                }
                                            }
                                        </script>



                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/End: award-->
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