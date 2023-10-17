<?php foreach ($pageData  as $post) : ?>
    <div class="cw_l-line">
        <a href="/community/user/<?= $post['username'] ?>" class="user-avatar">
            <img class="user-avatar-img" src="<?= $post['avatar'] ?>">
        </a>
        <div class="info">
            <div class="ihead">
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

                <div class="time">
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

                </div>
            </div>
            <div class="ibody">
                <p><?= $post['post_content'] ?></p>
            </div>
            <div class="ibottom">
                <div class="ib-li ib-reply" data-id="<?= $post['post_id'] ?>">
                    <a class="btn" onclick="document.getElementById('reply-<?= $post['id'] ?>').style.display = (document.getElementById('reply-<?= $post['id'] ?>').style.display === 'none') ? 'block' : 'none'"><i class="fas fa-reply mr-1"></i>Reply</a>
                </div>
                <div id="<?= $post['post_c_id'] ?>" class="ib-li">
                    <div class="ib-li ib-like">
                        <a style="color:white;" onclick="addRepyLike(<?= $post['post_c_id'] ?>)" class="btn cm-btn-vote">
                            <i class="far fa-thumbs-up mr-1"></i><span class="value">
                                <?= $post['main_like']['total_post_rep'] ?>
                            </span>
                        </a>
                    </div>
                    <div class="ib-li ib-dislike">
                        <a style="color:white;" onclick="addRepyDislike(<?= $post['post_c_id'] ?>)" class="btn cm-btn-vote">
                            <i class="far fa-thumbs-down mr-1"></i><span class="value">
                                <?= $post['main_like']['total_post_disrep'] ?>
                            </span>
                        </a>
                    </div>
                </div>
                <div class="ib-li">
                    <div class="ib-li show">
                        <a class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true"><i class="fas fa-ellipsis-h mr-1"></i>More</a>
                        <div class="dropdown-menu dropdown-menu-model dropdown-menu-normal" aria-labelledby="ssc-list" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 20px, 0px);">
                            <form method="post" action="/report/board-comment-main">
                                <input type="hidden" name="report_main_id" value="<?= $post['post_c_id'] ?>">
                                <button type="submit" class="dropdown-item cm-report" onclick="return confirm('Are you sure you want to report?')">Report Spam</button>
                            </form>
                        </div>
                    </div>
                </div>
                <?php
                if (isset(auth()->user()->username)) {
                ?>
                    <div id="reply-<?= $post['id'] ?>" class="comment-input is-reply" style="display:none;">
                        <div class="user-avatar">
                            <img class="user-avatar-img" src="<?= auth()->user()->avatar ?>">
                        </div>
                        <div class="ci-form">
                            <form method="post" action="/post/viewrepypost" class="preform preform-dark comment-form">
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
                <?php
                } else {
                }
                ?>
                <div class="replies">
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
                    <div class="replies-wrap" id="replies-<?= $post['post_c_id'] ?>" style="display:none;">
                        <?php foreach ($post['replies'] as $reply) { ?>

                            <div class="cw_l-line">
                                <a href="<?= base_url('/community/user/') . $reply['username'] ?>" class="user-avatar">
                                    <img class="user-avatar-img" src="<?= $reply['avatar'] ?>">
                                </a>
                                <div class="info">
                                    <div class="ihead">
                                        <?php
                                        $role = $reply['group'];
                                        $roleToClass = [
                                            'superadmin' => 'user-name is-level-x is-level-b',
                                            'admin' => 'user-name is-level-x is-level-d',
                                            'mod' => 'user-name is-level-x is-level-a'
                                        ];

                                        $replyclass = $roleToClass[$role] ?? 'user-name';
                                        ?>
                                        <a href="/community/user/<?= $reply['username'] ?>" target="_blank" class="<?= $replyclass ?>">
                                            <?= $reply['username'] ?>
                                            <span><?= $reply['group'] ?></span>
                                        </a>
                                        <div class="time">
                                            <?php
                                            $datetime1 = new DateTime(); // current datetime
                                            $datetime2 = new DateTime($reply['created_at']);
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
                                    <div class="ibody">
                                        <p>
                                            <?= $reply['post_content'] ?>
                                        </p>
                                    </div>
                                    <div class="ibottom">
                                        <div class="ib-li ib-reply">
                                            <a class="btn" onclick="document.getElementById('replyp-<?= $reply['post_u_id'] ?>').style.display = (document.getElementById('replyp-<?= $reply['post_u_id'] ?>').style.display === 'none') ? 'block' : 'none'; "><i class="fas fa-reply mr-1"></i>Reply</a>
                                        </div>
                                        <div id="<?= $reply['post_u_id'] ?>" class="ib-li">
                                            <div class="ib-li ib-like">
                                                <a style="color:white;" onclick="addRepycLike(<?= $reply['post_u_id'] ?>)" class="btn cm-btn-vote">
                                                    <i class="far fa-thumbs-up mr-1"></i><span class="value">
                                                        <?= $reply['repy_like']['total_post_rep'] ?>
                                                    </span>
                                                </a>
                                            </div>
                                            <div class="ib-li ib-dislike">
                                                <a style="color:white;" onclick="addRepycDislike(<?= $reply['post_u_id'] ?>)" class="btn cm-btn-vote">
                                                    <i class="far fa-thumbs-down mr-1"></i><span class="value">
                                                        <?= $reply['repy_like']['total_post_disrep'] ?>
                                                    </span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="ib-li">
                                            <a class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-ellipsis-h mr-1"></i>More</a>
                                            <div class="dropdown-menu dropdown-menu-model dropdown-menu-normal" aria-labelledby="ssc-list">
                                                <form method="post" action="/report/board-comment-repy">
                                                    <input type="hidden" name="report_repy_id" value="<?= $reply['post_u_id'] ?>">
                                                    <button type="submit" class="dropdown-item cm-report" onclick="return confirm('Are you sure you want to report?')">Report Spam</button>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                            <?php
                            if (isset(auth()->user()->username)) {
                            ?>
                                <div id="replyp-<?= $reply['post_u_id'] ?>" class="comment-input is-reply" style="display:none;">
                                    <div class="user-avatar">
                                        <img class="user-avatar-img" src="<?= auth()->user()->avatar ?>">
                                    </div>
                                    <div class="ci-form">
                                        <form method="post" action="/post/viewrepypost" class="preform preform-dark comment-form">
                                            <input type="hidden" name="user_id" value="<?= auth()->user()->id ?>">
                                            <input type="hidden" name="post_u_id" value="<?php echo rand(000000, 9999999); ?>">
                                            <input type="hidden" name="post_c_id" value="<?= $post['post_c_id'] ?>">
                                            <textarea class="form-control form-control-textarea comment-subject emo-on cm-input" name="post_content" maxlength="3000" placeholder="Add a reply"></textarea>
                                            <div class="ci-buttons">
                                                <div class="ci-b-right">
                                                    <div class="cb-li">
                                                        <a class="btn btn-sm btn-secondary btn-close-reply" onclick="document.getElementById('replyp-<?= $reply['id'] ?>').style.display = (document.getElementById('replyp-<?= $reply['id'] ?>').style.display === 'none') ? 'block' : 'none'">Close</a>
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
                            } else {
                            }
                            ?>
                        <?php
                        } ?>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
<?php endforeach; ?>