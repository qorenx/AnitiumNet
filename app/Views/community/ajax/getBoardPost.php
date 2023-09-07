<?php foreach ($pageData as $post) : ?>
    <div class="item" id="post-<?= $post['post_id'] ?>">
        <div class="is-vote is-vote-new">
            <a class="is-up lp-btn-vote" disabled><i class="far fa-thumbs-up"></i></a>
            <div class="is-point like-value">
                <?= $post['main_like']['total_post_rep'] ?>
            </div>
            <a class="is-down lp-btn-vote" disabled><i class="far fa-thumbs-down"></i></a>
            <div class="is-point like-value">
                <?= $post['main_like']['total_post_disrep'] ?>
            </div>
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
            <div class="is-time">
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
        <div class="is-body">
            <h4 class="item-name"><a href="/community/post?pid=<?= $post['post_id'] ?>&pcon=<?= urlencode($post['post_head']) ?>"><?= $post['post_head'] ?></a></h4>
            <p><?= $post['post_content'] ?></p>
        </div>
        <div class="is-bottom">
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
                    <i class="badg-level"></i>
                    <?= $post['username'] ?><span><?= $post['group'] ?></span>
                </a>
            </div>
            <div class="is-stats">
                <div><i class="fas fa-comment mr-1"></i><?= $post['post_id_count'] ?></div>
            </div>
        </div>
    </div>
<?php endforeach; ?>