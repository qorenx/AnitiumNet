<?= $this->include('community/boardextend/boardheader') ?>
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
                <?= $this->include('community/boardextend/nc-sidebar') ?>
                <div class="nc-body">
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
                    <script>
                        function addLike(postId) {
                            $.ajax({
                                url: '/community/repsystem/postrep/' + postId,
                                type: 'POST',
                                success: function(result) {
                                    $('#postlinkview' + postId).text(parseInt($('#postlinkview' + postId).text()) + 1);
                                }
                            });
                        }

                        function adddisLike(postId) {
                            $.ajax({
                                url: '/community/repsystem/postdisrep/' + postId,
                                type: 'POST',
                                success: function(result) {
                                    $('#postdislinkview' + postId).text(parseInt($('#postdislinkview' + postId).text()) + 1);
                                }
                            });
                        }
                    </script>
                    <div class="nc-list">
                        <div class="post-list">
                            <?php $count = 0; ?>
                            <?php foreach ($boardmypost as $post) : ?>
                                <?php if ($count < 10) : ?>

                                    <div class="item" id="post-<?= $post['post_id'] ?>">
                                        <div class="is-vote is-vote-new">
                                            <a class="is-up lp-btn-vote" id="postlink<?= $post['id'] ?>" onclick="addLike(<?= $post['id'] ?>)"><i class="far fa-thumbs-up"></i></a>
                                            <div class="is-point like-value" id="postlinkview<?= $post['id'] ?>"><?= $post['post_rep'] ?></div>
                                            <a class="is-down lp-btn-vote" id="postlink<?= $post['id'] ?>" onclick="adddisLike(<?= $post['id'] ?>)"><i class="far fa-thumbs-down"></i></a>
                                            <div class="is-point like-value" id="postdislinkview<?= $post['id'] ?>"><?= $post['post_disrep'] ?></div>

                                        </div>
                                        <div class="is-head">
                                            <div class="ztag"><span class="zt-<?php
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
                                                                                ?>"><?php
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
                                            <h4 class="item-name"><a href="post?pid=<?= $post['post_id'] ?>&pcon=<?= urlencode($post['post_head']) ?>"><?= $post['post_head'] ?></a></h4>
                                            <p><?= $post['post_content'] ?></p>
                                        </div>
                                        <div class="is-bottom">
                                            <div class="cn-owner">
                                                <div class="profile-avatar">
                                                    <img src="<?= $post['avatar'] ?>">
                                                </div>
                                                <a href="/community/user/<?= $post['username'] ?>" target="_blank" class="user-name is-level-x">
                                                    <i class="badg-level"></i>
                                                    <?= $post['username'] ?>
                                                    <span><?= $post['group'] ?></span>
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
                                            <a class="is-up lp-btn-vote" id="postlink<?= $post['id'] ?>" onclick="addLike(<?= $post['id'] ?>)"><i class="far fa-thumbs-up"></i></a>
                                            <div class="is-point like-value" id="postlinkview<?= $post['id'] ?>"><?= $post['post_rep'] ?></div>
                                            <a class="is-down lp-btn-vote" id="postlink<?= $post['id'] ?>" onclick="adddisLike(<?= $post['id'] ?>)"><i class="far fa-thumbs-down"></i></a>
                                            <div class="is-point like-value" id="postdislinkview<?= $post['id'] ?>"><?= $post['post_disrep'] ?></div>
                                        </div>
                                        <div class="is-head">

                                            <div class="ztag"><span class="zt-<?php
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
                                                                                ?>"><?php
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
                                            <h4 class="item-name"><a href="post?pid=<?= $post['post_id'] ?>&pcon=<?= urlencode($post['post_head']) ?>"><?= $post['post_head'] ?></a></h4>
                                            <p><?= $post['post_content'] ?></p>
                                        </div>
                                        <div class="is-bottom">
                                            <div class="cn-owner">
                                                <div class="profile-avatar">
                                                    <img src="<?= $post['avatar'] ?>">
                                                </div>
                                                <a href="/community/user/<?= $post['username'] ?>" target="_blank" class="user-name is-level-x">
                                                    <i class="badg-level"></i>
                                                    <?= $post['username'] ?>
                                                    <span><?= $post['group'] ?></span>
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

                            <?php if (count($boardmypost) > 10) : ?>
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
<?= $this->include('community/boardextend/boardfooter') ?>