<?php $post = $boardviewpost ?>
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
            <a href="/community/board/tag/<?php
                                            switch ($post['post_tag']) {
                                                case 1:
                                                    echo 'updates';
                                                    break;
                                                case 2:
                                                    echo 'general';
                                                    break;
                                                case 3:
                                                    echo 'suggestion';
                                                    break;
                                                case 4:
                                                    echo 'question';
                                                    break;
                                                case 5:
                                                    echo 'discussion';
                                                    break;
                                                case 6:
                                                    echo 'feedback';
                                                    break;
                                                default:
                                                    echo 'unknown';
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
    <a class="btn btn-upvote p-btn-vote" id="postlink<?= $post['post_id'] ?>" onclick="addPostLike(<?= $post['id'] ?>)">
        <i class="far fa-thumbs-up mr-2"></i>
        <span class="value" id="boardlikepost-<?= $post['id'] ?>"><?= $post['post_rep'] ?></span>
    </a>
    <a class="btn btn-downvote p-btn-vote" id="postdislink<?= $post['post_id'] ?>" onclick="addPostDislike(<?= $post['id'] ?>)">
        <i class="far fa-thumbs-down mr-2"></i>
        <span class="value" id="boarddislikepost-<?= $post['id'] ?>"><?= $post['post_disrep'] ?></span>
    </a>
</div>
<script>
    function addPostLike(postId) {
        var post = $("#postlink" + postId);
        var liked = post.data("liked");
        if (!liked) {
            $.ajax({
                url: '/community/boardreppost/' + postId,
                type: 'POST',
                success: function(result) {
                    $('#boardlikepost-' + postId).text(parseInt($('#boardlikepost-' + postId).text()) + 1);
                    post.data("liked", 1);
                }
            });
        }
    }

    function addPostDislike(postId) {
        var post = $("#postdislink" + postId);
        var disliked = post.data("disliked");
        if (!disliked) {
            $.ajax({
                url: '/community/boarddispost/' + postId,
                type: 'POST',
                success: function(result) {
                    $('#boarddislikepost-' + postId).text(parseInt($('#boarddislikepost-' + postId).text()) + 1);
                    post.data("disliked", 1);
                }
            });
        }
    }
</script>


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
<?php ?>



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
                <form method="post" action="/community/post/viewpost" class="preform preform-dark comment-form">
                    <input type="hidden" name="user_id" value="<?= auth()->user()->id ?>">
                    <input type="hidden" name="post_id" value="<?= $post['post_id'] ?>">
                    <input type="hidden" name="post_c_id" value="<?php echo rand(00000000, 999999999); ?>">
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


