<?= $this->include('community/boardextend/boardheader') ?>
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
                                    <a href="#content-comments" class="btn"><i class="fas fa-reply mr-2"></i>Reply</a>
                                    <a class="btn btn-upvote p-btn-vote" id="postlink">
                                        <i class="far fa-thumbs-up mr-2"></i>
                                        <span class="value" id="postlinkview">
                                        </span></a>
                                    <a class="btn btn-downvote p-btn-vote" id="postlink">
                                        <i class="far fa-thumbs-down mr-2"></i>
                                        <span class="value" id="postdislinkview">
                                        </span></a>
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






                    <div class="list-comment">
                        <div class="cw_list">
                            <?php $count = 0; ?>
                            <?php foreach ($boardviewpostlist as $post) : ?>
                                <?php if ($count < 10) : ?>
                                    <div class="cw_l-line">
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
                                                <div class="ib-li ib-reply" data-id="<?= $post['post_id'] ?>">
                                                    <a class="btn" onclick="document.getElementById('reply-<?= $post['id'] ?>').style.display = (document.getElementById('reply-<?= $post['id'] ?>').style.display === 'none') ? 'block' : 'none'"><i class="fas fa-reply mr-1"></i>Reply</a>
                                                </div>
                                                <div class="ib-li ib-like">
                                                    <a style="color:white;" id="postlink" class="btn cm-btn-vote">
                                                        <i class="far fa-thumbs-up mr-1"></i><span id="postlinkview" class="value">

                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="ib-li ib-dislike">
                                                    <a style="color:white;" id="postlink" class="btn cm-btn-vote">
                                                        <i class="far fa-thumbs-down mr-1"></i><span id="postdislinkview" class="value">

                                                        </span>
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
                                                <div id="reply-<?= $post['id'] ?>" class="comment-input is-reply" style="display:none;">
                                                    <div class="user-avatar">
                                                        <img class="user-avatar-img" src="<?= auth()->user()->avatar ?>">
                                                    </div>
                                                    <div class="ci-form">
                                                        <form method="post" action="/community/post/viewrepypost" class="preform preform-dark comment-form">
                                                            <input type="hidden" name="user_id" value="<?= auth()->user()->id ?>">
                                                            <input type="hidden" name="post_u_id" value="<?php echo rand(000000, 9999999); ?>">
                                                            <input type="hidden" name="post_c_id" value="<?= $post['post_c_id'] ?>">
                                                            <textarea class="form-control form-control-textarea comment-subject emo-on cm-input" name="post_content" maxlength="3000" placeholder="Add a reply"></textarea>
                                                            <div class="ci-buttons">
                                                                <div class="ci-b-right">
                                                                    <div class="cb-li">
                                                                        <a class="btn btn-sm btn-secondary btn-close-reply" onclick="document.getElementById('reply-<?= $post['id'] ?>').style.display = (document.getElementById('reply-<?= $post['id'] ?>').style.display === 'none') ? 'block' : 'none'">Close</a>
                                                                    </div>
                                                                    <div class="cb-li">
                                                                        <button class="btn btn-sm btn-primary ml-2">Reply</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div class="replies" id="block-reply-<?= $post['post_c_id'] ?>">
                                                    <div class="rep-more rep-in">
                                                        <?php
                                                        $counter = count($post['replies']);
                                                        if ($counter != 0) {
                                                        ?>
                                                            <button type="button" class="btn btn-sm cm-btn-show-rep" data-id="<?= $post['post_c_id'] ?>" onclick="toggleReplies('<?= $post['post_c_id'] ?>')">
                                                                <i class="fas fa-caret-down mr-2"></i><span><?= $counter ?> replies</span>
                                                            </button>
                                                        <?php } ?>
                                                    </div>
                                                    <script>
                                                        function toggleReplies(postId) {
                                                            var replies = document.getElementById("replies-" + postId);
                                                            if (replies.style.display === "none") {
                                                                replies.style.display = "block";
                                                            } else {
                                                                replies.style.display = "none";
                                                            }
                                                        }
                                                    </script>
                                                    <div class="replies-wrap" id="replies-<?= $post['post_c_id'] ?>" style="display:none;">
                                                        <div id="replyp-<?= $post['id'] ?>" class="comment-input is-reply" style="display:none;">
                                                            <div class="user-avatar">
                                                                <img class="user-avatar-img" src="<?= auth()->user()->avatar ?>">
                                                            </div>
                                                            <div class="ci-form">
                                                                <form method="post" action="/community/post/viewrepypost" class="preform preform-dark comment-form">
                                                                    <input type="hidden" name="user_id" value="<?= auth()->user()->id ?>">
                                                                    <input type="hidden" name="post_u_id" value="<?php echo rand(000000, 9999999); ?>">
                                                                    <input type="hidden" name="post_c_id" value="<?= $post['post_c_id'] ?>">
                                                                    <textarea class="form-control form-control-textarea comment-subject emo-on cm-input" name="post_content" maxlength="3000" placeholder="Add a reply"></textarea>
                                                                    <div class="ci-buttons">
                                                                        <div class="ci-b-right">
                                                                            <div class="cb-li">
                                                                                <a class="btn btn-sm btn-secondary btn-close-reply" onclick="document.getElementById('replyp-<?= $post['id'] ?>').style.display = (document.getElementById('replyp-<?= $post['id'] ?>').style.display === 'none') ? 'block' : 'none'">Close</a>
                                                                            </div>
                                                                            <div class="cb-li">
                                                                                <button class="btn btn-sm btn-primary ml-2">Reply</button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>

                                                        <?php
                                                        foreach ($post['replies'] as $reply) { ?>
                                                            <div class="cw_l-line">
                                                                <a href="<?= base_url('/community/user/') . $reply['username'] ?>" class="user-avatar">
                                                                    <img class="user-avatar-img" src="<?= $reply['avatar'] ?>">
                                                                </a>
                                                                <div class="info">
                                                                    <div class="ihead">
                                                                        <a href="" target="_blank" class="user-name is-level-x">
                                                                            <?= $reply['username'] ?>
                                                                            <span><?= $reply['group'] ?></span>
                                                                        </a>
                                                                        <div class="time"><?= $reply['created_at'] ?></div>
                                                                    </div>
                                                                    <div class="ibody">
                                                                        <p>
                                                                            <?= $reply['post_content'] ?>
                                                                        </p>
                                                                    </div>
                                                                    <div class="ibottom">
                                                                        <div class="ib-li ib-reply">
                                                                            <a class="btn" onclick="
                                                                            document.getElementById('block-reply-<?= $post['post_c_id'] ?>').scrollIntoView(); 
                                                                            var textarea = document.getElementById('replies-<?= $post['post_c_id'] ?>').querySelector('textarea');
                                                                            textarea.value = ''; 
                                                                            textarea.focus();
                                                                            document.getElementById('replyp-<?= $post['id'] ?>').style.display = (document.getElementById('replyp-<?= $post['id'] ?>').style.display === 'none') ? 'block' : 'none'; 
                                                                            textarea.value += '<a class=&quot;tag-name&quot;>@<?= $reply['username'] ?></a>';
                                                                            "><i class="fas fa-reply mr-1"></i>Reply</a>
                                                                        </div>
                                                                        <div class="ib-li">
                                                                            <a class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-ellipsis-h mr-1"></i>More</a>
                                                                            <div class="dropdown-menu dropdown-menu-model dropdown-menu-normal" aria-labelledby="ssc-list">
                                                                                <a class="dropdown-item cm-report">Report
                                                                                    Spam</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="clearfix"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        <?php
                                                        } ?>

                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                    </div>

                                <?php else : ?>
                                    <div class="cw_l-line more-posts d-none">
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
                                                <div class="ib-li ib-reply" data-id="<?= $post['post_id'] ?>">
                                                    <a class="btn" onclick="document.getElementById('reply-<?= $post['id'] ?>').style.display = (document.getElementById('reply-<?= $post['id'] ?>').style.display === 'none') ? 'block' : 'none'"><i class="fas fa-reply mr-1"></i>Reply</a>
                                                </div>
                                                <div class="ib-li ib-like">
                                                    <a style="color:white;" id="postlink" class="btn cm-btn-vote">
                                                        <i class="far fa-thumbs-up mr-1"></i><span id="postlinkview" class="value">

                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="ib-li ib-dislike">
                                                    <a style="color:white;" id="postlink" class="btn cm-btn-vote">
                                                        <i class="far fa-thumbs-down mr-1"></i><span id="postdislinkview" class="value">

                                                        </span>
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

                                                <?php if (isset(auth()->user()->username)) { ?>
                                                    <div id="reply-<?= $post['id'] ?>" class="comment-input is-reply" style="display:none;">
                                                        <div class="user-avatar">
                                                            <img class="user-avatar-img" src="<?= auth()->user()->avatar ?>">
                                                        </div>
                                                        <div class="ci-form">
                                                            <form method="post" action="/community/post/viewrepypost" class="preform preform-dark comment-form">
                                                                <input type="hidden" name="user_id" value="<?= auth()->user()->id ?>">
                                                                <input type="hidden" name="post_u_id" value="<?php echo rand(000000, 9999999); ?>">
                                                                <input type="hidden" name="post_c_id" value="<?= $post['post_c_id'] ?>">
                                                                <textarea class="form-control form-control-textarea comment-subject emo-on cm-input" name="post_content" maxlength="3000" placeholder="Add a reply"></textarea>
                                                                <div class="ci-buttons">
                                                                    <div class="ci-b-right">
                                                                        <div class="cb-li">
                                                                            <a class="btn btn-sm btn-secondary btn-close-reply" onclick="document.getElementById('reply-<?= $post['id'] ?>').style.display = (document.getElementById('reply-<?= $post['id'] ?>').style.display === 'none') ? 'block' : 'none'">Close</a>
                                                                        </div>
                                                                        <div class="cb-li">
                                                                            <button class="btn btn-sm btn-primary ml-2">Reply</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                <?php } else {
                                                } ?>



                                                <div class="replies" id="block-reply-<?= $post['post_c_id'] ?>">
                                                    <div class="rep-more rep-in">
                                                        <?php
                                                        $counter = count($post['replies']);
                                                        if ($counter != 0) {
                                                        ?>
                                                            <button type="button" class="btn btn-sm cm-btn-show-rep" data-id="<?= $post['post_c_id'] ?>" onclick="toggleReplies('<?= $post['post_c_id'] ?>')">
                                                                <i class="fas fa-caret-down mr-2"></i><span><?= $counter ?> replies</span>
                                                            </button>
                                                        <?php } ?>
                                                    </div>
                                                    <script>
                                                        function toggleReplies(postId) {
                                                            var replies = document.getElementById("replies-" + postId);
                                                            if (replies.style.display === "none") {
                                                                replies.style.display = "block";
                                                            } else {
                                                                replies.style.display = "none";
                                                            }
                                                        }
                                                    </script>
                                                    <div class="replies-wrap" id="replies-<?= $post['post_c_id'] ?>" style="display:none;">
                                                        <?php foreach ($post['replies'] as $reply) : ?>
                                                            <div class="cw_l-line">
                                                                <a href="" class="user-avatar">
                                                                    <img class="user-avatar-img" src="<?= $reply['avatar'] ?>">
                                                                </a>
                                                                <div class="info">
                                                                    <div class="ihead">
                                                                        <a href="" target="_blank" class="user-name is-level-x">
                                                                            <?= $reply['username'] ?>
                                                                            <span><?= $reply['group'] ?></span>
                                                                        </a>
                                                                        <div class="time"><?= $reply['created_at'] ?></div>
                                                                    </div>
                                                                    <div class="ibody">
                                                                        <p>
                                                                            <?= $reply['post_content'] ?>
                                                                        </p>
                                                                    </div>
                                                                    <div class="ibottom">
                                                                        <div class="ib-li ib-reply">
                                                                            <a class="btn" onclick="document.getElementById('replies-<?= $post['post_c_id'] ?>').querySelector('textarea').value = ''; document.getElementById('replyp-<?= $post['id'] ?>').style.display = (document.getElementById('replyp-<?= $post['id'] ?>').style.display === 'none') ? 'block' : 'none'; document.getElementById('replies-<?= $post['post_c_id'] ?>').querySelector('textarea').value += '<a class=&quot;tag-name&quot;>@<?= $reply['username'] ?></a>';"><i class="fas fa-reply mr-1"></i>Reply</a>
                                                                        </div>
                                                                        <div class="ib-li">
                                                                            <a class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-ellipsis-h mr-1"></i>More</a>
                                                                            <div class="dropdown-menu dropdown-menu-model dropdown-menu-normal" aria-labelledby="ssc-list">
                                                                                <a class="dropdown-item cm-report">Report
                                                                                    Spam</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="clearfix"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        <?php endforeach; ?>
                                                        <div id="replyp-<?= $post['id'] ?>" class="comment-input is-reply" style="display:none;">
                                                            <div class="user-avatar">
                                                                <img class="user-avatar-img" src="<?= auth()->user()->avatar ?>">
                                                            </div>
                                                            <div class="ci-form">
                                                                <form method="post" action="/community/post/viewrepypost" class="preform preform-dark comment-form">
                                                                    <input type="hidden" name="user_id" value="<?= auth()->user()->id ?>">
                                                                    <input type="hidden" name="post_u_id" value="<?php echo rand(000000, 9999999); ?>">
                                                                    <input type="hidden" name="post_c_id" value="<?= $post['post_c_id'] ?>">
                                                                    <textarea class="form-control form-control-textarea comment-subject emo-on cm-input" name="post_content" maxlength="3000" placeholder="Add a reply"></textarea>
                                                                    <div class="ci-buttons">
                                                                        <div class="ci-b-right">
                                                                            <div class="cb-li">
                                                                                <a class="btn btn-sm btn-secondary btn-close-reply" onclick="document.getElementById('replyp-<?= $post['id'] ?>').style.display = (document.getElementById('replyp-<?= $post['id'] ?>').style.display === 'none') ? 'block' : 'none'">Close</a>
                                                                            </div>
                                                                            <div class="cb-li">
                                                                                <button class="btn btn-sm btn-primary ml-2">Reply</button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                        <?php
                                                        foreach ($post['replies'] as $reply) { ?>
                                                            <div class="cw_l-line">
                                                                <a href="<?= base_url('/community/user/') . $reply['username'] ?>" class="user-avatar">
                                                                    <img class="user-avatar-img" src="<?= $reply['avatar'] ?>">
                                                                </a>
                                                                <div class="info">
                                                                    <div class="ihead">
                                                                        <a href="" target="_blank" class="user-name is-level-x">
                                                                            <?= $reply['username'] ?>
                                                                            <span><?= $reply['group'] ?></span>
                                                                        </a>
                                                                        <div class="time"><?= $reply['created_at'] ?></div>
                                                                    </div>
                                                                    <div class="ibody">
                                                                        <p>
                                                                            <?= $reply['post_content'] ?>
                                                                        </p>
                                                                    </div>
                                                                    <div class="ibottom">
                                                                        <div class="ib-li ib-reply">
                                                                            <a class="btn" onclick="
                                                                            document.getElementById('block-reply-<?= $post['post_c_id'] ?>').scrollIntoView(); 
                                                                            var textarea = document.getElementById('replies-<?= $post['post_c_id'] ?>').querySelector('textarea');
                                                                            textarea.value = ''; 
                                                                            textarea.focus();
                                                                            document.getElementById('replyp-<?= $post['id'] ?>').style.display = (document.getElementById('replyp-<?= $post['id'] ?>').style.display === 'none') ? 'block' : 'none'; 
                                                                            textarea.value += '<a class=&quot;tag-name&quot;>@<?= $reply['username'] ?></a>';
                                                                            "><i class="fas fa-reply mr-1"></i>Reply</a>
                                                                        </div>
                                                                        <div class="ib-li">
                                                                            <a class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-ellipsis-h mr-1"></i>More</a>
                                                                            <div class="dropdown-menu dropdown-menu-model dropdown-menu-normal" aria-labelledby="ssc-list">
                                                                                <a class="dropdown-item cm-report">Report
                                                                                    Spam</a>
                                                                            </div>
                                                                        </div>
                                                                        <div class="clearfix"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        <?php
                                                        } ?>
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

    <?= $this->include('community/boardextend/boardfooter') ?>