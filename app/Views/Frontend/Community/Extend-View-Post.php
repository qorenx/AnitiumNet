<?php $post = $boardviewpost ?>
<div class="cd-article" style="margin-top: 15px;">
    <div class="cda-about d-flex align-items-center mb-3">
        <div class="cn-owner">
            <div class="profile-avatar">
                <img src="<?= $post['avatar'] ?>">
            </div>
            <?php
            $role = $post['group'];
            $roleToClass = [
                'superadmin' => 'user-name is-level-x is-level-b',
                'admin' => 'user-name is-level-x is-level-d',
                'mod' => 'user-name is-level-x is-level-a'
            ];

            $postclass = $roleToClass[$role] ?? 'user-name';
            ?>
            <a href="/community/user/<?= $post['username'] ?>" target="_blank" class="<?= $postclass ?>">
                <?= $post['username'] ?>
                <span><?= $post['group'] ?></span>
            </a>
        </div>
        <div class="ztag ml-2">
            <span class="dot m-hide"></span>
            <a href="/community/board/tag?type=<?php
                                                switch ($post['post_tag']) {
                                                    case 1:
                                                        echo '1';
                                                        break;
                                                    case 2:
                                                        echo '2';
                                                        break;
                                                    case 3:
                                                        echo '3';
                                                        break;
                                                    case 4:
                                                        echo '4';
                                                        break;
                                                    case 5:
                                                        echo '5';
                                                        break;
                                                    case 6:
                                                        echo '6';
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
            <div class="time d-inline"><span><i class="dot"></i>
                    <?php
                    $datetime1 = new DateTime(); // current datetime
                    $datetime2 = new DateTime($post['created_at']);
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

                </span>
            </div>
        </div>
    </div>
    <h3 class="article-name mb-3"><?= $post['post_head'] ?></h3>
    <div class="cda-content">
        <p><?= $post['post_content'] ?></p>
    </div>
    <div class="cda-bottom">
        <div class="d-flex justify-content-between align-itmes-center">
            <div id="<?= $post['post_id'] ?>">
                <div class="float-left">
                    <a class="btn btn-upvote p-btn-vote" onclick="addMainPostLike(<?= $post['post_id'] ?>)">
                        <i class="far fa-thumbs-up mr-2"></i>
                        <span class="value"><?= $post['main_like']['total_post_rep'] ?></span>
                    </a>
                    <a class="btn btn-downvote p-btn-vote" onclick="addMainPostDislike(<?= $post['post_id'] ?>)">
                        <i class="far fa-thumbs-down mr-2"></i>
                        <span class="value"><?= $post['main_like']['total_post_disrep'] ?></span>
                    </a>
                </div>
            </div>
            <div class="ib-li show">
                <a class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"><i class="fas fa-ellipsis-h mr-1"></i>More</a>
                <div class="dropdown-menu dropdown-menu-model dropdown-menu-normal" aria-labelledby="ssc-list" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 20px, 0px);">
                    <form method="post" action="/report/board-report">
                        <input type="hidden" name="report_main_id" value="<?= $post['post_id'] ?>">
                        <button type="submit" class="dropdown-item cm-report" onclick="return confirm('Are you sure you want to report?')">Report Spam</button>
                    </form>
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
                <form method="post" action="/post/viewpost" class="preform preform-dark comment-form">
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
    } ?>