<?= $this->include('anime/templates/header') ?>
<link rel="stylesheet" href="<?php echo base_url(); ?>files/css/profile.css">

<body data-page="page_profile" style="max-width:100%!important;width:100%!important;">
    <div id="wrapper" data-page="page_home">
        <div class="clearfix"></div>
        <?= $this->include('anime/templates/head') ?>
        <div class="award-bg">
            <div class="award-bg-img" style="background-image: url(/files/images/cover.png);"></div>
        </div>
        <div class="container">
            <div class="award-inner">
                <div class="wideview">
                    <div class="connect-detail">
                        <div class="ai-control">
                            <div class="aic-left">
                                <a href="/community/board"><i class="fas fa-angle-left mr-2"></i>Back</a>
                            </div>
                        </div>
                        <?php foreach ($boardviewpost as $post) : ?>
                            <div class="cd-article" style="margin-top: 15px;">
                                <div class="cda-about d-flex align-items-center mb-3">
                                    <div class="cn-owner">
                                        <div class="profile-avatar">
                                            <img src="<?= $post['avatar'] ?>">
                                        </div>
                                        <a href="/community/user/<?= $post['username'] ?>" target="_blank" class="user-name is-level-x">
                                            <?= $post['username'] ?>
                                            <span><?= $post['group'] ?></span>
                                        </a>
                                    </div>
                                    <div class="ztag ml-2">
                                        <span class="dot m-hide"></span>
                                        <a href="/community/board/tags?=<?php
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
                                                                        ?>" title="General"><span class="zt-<?php
                                                                                                            switch ($post['post_tag']) {
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
                                                                                                            ?> mr-2"><?php
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
                                                                                                                        ?></span></a>
                                        <div class="time d-inline"><span><i class="dot"></i><?= $post['created_at'] ?></span>
                                        </div>
                                    </div>
                                </div>
                                <h3 class="article-name mb-3"><?= $post['post_head'] ?></h3>
                                <div class="cda-content">
                                    <p><?= $post['post_content'] ?></p>
                                </div>
                                <div class="cda-bottom">
                                    <div class="d-flex justify-content-between align-itmes-center">
                                        <div class="float-left">
                                            <a href="#content-comments" class="btn"><i class="fas fa-reply mr-2"></i>Reply</a>
                                            <a class="btn btn-upvote p-btn-vote" id="postlink<?= $post['id'] ?>" onclick="addLike(<?= $post['id'] ?>)">
                                                <i class="far fa-thumbs-up mr-2"></i>
                                                <span class="value" id="postlinkview<?= $post['id'] ?>">
                                                    <?= $post['post_rep'] ?></span></a>
                                            <a class="btn btn-downvote p-btn-vote" id="postlink<?= $post['id'] ?>" onclick="adddisLike(<?= $post['id'] ?>)">
                                                <i class="far fa-thumbs-down mr-2"></i>
                                                <span class="value" id="postdislinkview<?= $post['id'] ?>">
                                                    <?= $post['post_disrep'] ?></span></a>
                                        </div>



                                        <div class="ib-li show">
                                            <a class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"><i class="fas fa-ellipsis-h mr-1"></i>More</a>
                                            <div class="dropdown-menu dropdown-menu-model dropdown-menu-normal" aria-labelledby="ssc-list" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 20px, 0px);">
                                                <a class="dropdown-item cm-report">Report</a>
                                                <?php if (isset(auth()->user()->groups[0]) && in_array(auth()->user()->groups[0], ['superadmin', 'admin'])) : ?>
                                                    <form method="post" action="/community/boardpost/delete">
                                                        <input type="hidden" name="post_delete_id" value="<?= $post['id'] ?>">
                                                        <button type="submit" class="dropdown-item cm-delete" onclick="return confirm('Are you sure you want to delete?')">Delete</button>
                                                    </form>
                                                <?php endif; ?>
                                            </div>
                                        </div>



                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                        <div id="content-comments" class="comments-wrap p-0" style="margin-bottom: 30px; margin-top: 20px;">
                            <div class="sc-header">
                                <div class="sc-h-title"><i class="far fa-comment-alt mr-2"></i><?php echo $boardviewpostcount; ?><span> Comments</span></div>
                                <div class="clearfix"></div>
                            </div>
                            <?php
                            if (isset(auth()->user()->username)) {
                            ?>
                                <div class="comment-input">
                                    <div class="user-avatar">
                                        <img class="user-avatar-img" src="<?= auth()->user()->avatar ?>">
                                    </div>
                                    <div class="ci-form">
                                        <div class="user-name">
                                            Comment as <span class="link-highlight ml-1"><?= auth()->user()->username ?></span>
                                        </div>
                                        <form method="post" action="/community/post/viewpost/<?= $post['post_id'] ?>" class="preform preform-dark comment-form">
                                            <input type="hidden" name="user_id" value="<?= auth()->user()->id ?>">
                                            <textarea class="form-control form-control-textarea comment-subject emo-on cm-input-base" id="df-cm-content" name="post_content" maxlength="3000" placeholder="Leave a comment" required=""></textarea>
                                            <div class="ci-buttons" id="df-cm-buttons">
                                                <div class="ci-b-right" style="display: none;">
                                                    <div class="cb-li">
                                                        <a class="btn btn-sm btn-secondary" id="df-cm-close">Close</a>
                                                        <button class="btn btn-sm btn-primary ml-2">Comment</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            <?php
                            } else {
                            }
                            ?>
                            <div class="list-comment">
                                <div class="cw_list">
                                    <?php $count = 0; ?>
                                    <?php foreach ($boardviewpostlist as $post) : ?>
                                        <?php if ($count < 10) : ?>
                                            <div class="cw_l-line" id="cm-">
                                                <a href="/community/user/<?= $post['username'] ?>" class="user-avatar">
                                                    <img class="user-avatar-img" src="<?= $post['avatar'] ?>">
                                                </a>
                                                <div class="info">
                                                    <div class="ihead">
                                                        <a href="/community/user/<?= $post['username'] ?>" target="_blank" class="user-name is-level-x"><?= $post['username'] ?></a>
                                                        <div class="time"><?= $post['created_at'] ?></div>
                                                    </div>
                                                    <div class="ibody">
                                                        <p><?= $post['post_content'] ?></p>
                                                    </div>
                                                    <div class="ibottom">
                                                        <div class="ib-li ib-like">
                                                            <a style="color:white;" id="postlink<?= $post['id'] ?>" onclick="addpostLike(<?= $post['id'] ?>)" class="btn cm-btn-vote">
                                                                <i class="far fa-thumbs-up mr-1"></i><span id="postlinkview<?= $post['id'] ?>" class="value"><?= $post['post_rep'] ?></span>
                                                            </a>
                                                        </div>
                                                        <div class="ib-li ib-dislike">
                                                            <a style="color:white;" id="postlink<?= $post['id'] ?>" onclick="addpostdisLike(<?= $post['id'] ?>)" class="btn cm-btn-vote">
                                                                <i class="far fa-thumbs-down mr-1"></i><span id="postdislinkview<?= $post['id'] ?>" class="value"><?= $post['post_disrep'] ?></span>
                                                            </a>
                                                        </div>


                                                        <div class="ib-li">
                                                            <div class="ib-li show">
                                                                <a class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"><i class="fas fa-ellipsis-h mr-1"></i>More</a>
                                                                <div class="dropdown-menu dropdown-menu-model dropdown-menu-normal" aria-labelledby="ssc-list" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 20px, 0px);">
                                                                    <a class="dropdown-item cm-report">Report</a>
                                                                    <?php if (isset(auth()->user()->groups[0]) && in_array(auth()->user()->groups[0], ['superadmin', 'admin'])) : ?>
                                                                        <form method="post" action="/community/boardrepypost/delete">
                                                                            <input type="hidden" name="post_delete_id" value="<?= $post['id'] ?>">
                                                                            <button type="submit" class="dropdown-item cm-delete" onclick="return confirm('Are you sure you want to delete?')">Delete</button>
                                                                        </form>
                                                                    <?php endif; ?>
                                                                </div>
                                                            </div>
                                                        </div>


                                                        <div class="clearfix"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php else : ?>
                                            <div class="cw_l-line more-posts d-none">
                                                <a href="/user/<?= $post['username'] ?>" class="user-avatar">
                                                    <img class="user-avatar-img" src="<?= $post['avatar'] ?>">
                                                </a>
                                                <div class="info">
                                                    <div class="ihead">
                                                        <a href="/user/<?= $post['username'] ?>" target="_blank" class="user-name is-level-x"><?= $post['username'] ?></a>
                                                        <div class="time"><?= $post['created_at'] ?></div>
                                                    </div>
                                                    <div class="ibody">
                                                        <p><?= $post['post_content'] ?></p>
                                                    </div>
                                                    <div class="ibottom">
                                                        <div class="ib-li ib-like">
                                                            <a style="color:white;" id="postlink<?= $post['id'] ?>" onclick="addpostLike(<?= $post['id'] ?>)" class="btn cm-btn-vote">
                                                                <i class="far fa-thumbs-up mr-1"></i><span id="postlinkview<?= $post['id'] ?>" class="value"><?= $post['post_rep'] ?></span>
                                                            </a>
                                                        </div>
                                                        <div class="ib-li ib-dislike">
                                                            <a style="color:white;" id="postlink<?= $post['id'] ?>" onclick="addpostdisLike(<?= $post['id'] ?>)" class="btn cm-btn-vote">
                                                                <i class="far fa-thumbs-down mr-1"></i><span id="postdislinkview<?= $post['id'] ?>" class="value"><?= $post['post_disrep'] ?></span>
                                                            </a>
                                                        </div>

                                                        <div class="ib-li">
                                                            <div class="ib-li show">
                                                                <a class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"><i class="fas fa-ellipsis-h mr-1"></i>More</a>
                                                                <div class="dropdown-menu dropdown-menu-model dropdown-menu-normal" aria-labelledby="ssc-list" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 20px, 0px);">
                                                                    <a class="dropdown-item cm-report">Report</a>
                                                                    <?php if (isset(auth()->user()->groups[0]) && in_array(auth()->user()->groups[0], ['superadmin', 'admin'])) : ?>
                                                                        <form method="post" action="/community/boardrepypost/delete">
                                                                            <input type="hidden" name="post_delete_id" value="<?= $post['id'] ?>">
                                                                            <button type="submit" class="dropdown-item cm-delete" onclick="return confirm('Are you sure you want to delete?')">Delete</button>
                                                                        </form>
                                                                    <?php endif; ?>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="clearfix"></div>
                                                    </div>


                                                </div>
                                            </div>
                                        <?php endif; ?>
                                        <?php $count++; ?>
                                    <?php endforeach; ?>
                                    <?php if (count($boardviewpostlist) > 10) : ?>
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
        <script>
            const textarea = document.getElementById('df-cm-content');
            const buttonClose = document.getElementById('df-cm-close');
            const divCiRight = document.querySelector('.ci-b-right');

            textarea.addEventListener('click', () => {
                divCiRight.style.display = 'block';
            });

            buttonClose.addEventListener('click', () => {
                divCiRight.style.display = 'none';
            });
        </script>
        <script>
            function addLike(postId) {
                $.post('/community/repsystem/postrep/' + postId, function() {
                    $('#postlinkview' + postId).text((i, val) => parseInt(val) + 1);
                });
            }

            function adddisLike(postId) {
                $.post('/community/repsystem/postdisrep/' + postId, function() {
                    $('#postdislinkview' + postId).text((i, val) => parseInt(val) + 1);
                });
            }

            function addpostLike(postId) {
                $.post('/community/repsystem/postviewrep/' + postId, function() {
                    $('#postlinkview' + postId).text((i, val) => parseInt(val) + 1);
                });
            }

            function addpostdisLike(postId) {
                $.post('/community/repsystem/postviewdisrep/' + postId, function() {
                    $('#postdislinkview' + postId).text((i, val) => parseInt(val) + 1);
                });
            }
        </script>
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