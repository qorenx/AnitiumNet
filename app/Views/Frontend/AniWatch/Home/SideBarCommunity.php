<section class="block_area block_area_sidebar block_area-connecting">
    <div class="block_area-header">
        <div class="float-left bah-heading mr-2">
            <h2 class="cat-heading">Community Posts</h2>
        </div>
        <div class="float-right viewmore"><a class="btn" href="/community/board" title="View more">View more<i class="fas fa-angle-right ml-2"></i></a></div>
        <div class="clearfix"></div>
    </div>
    <div class="block_area-content">
        <div class="zr-connect zr-connect-list">
            <div class="connecting-list">
                <?php foreach ($LastBoardCommunityData as $CommunityData) : ?>
                    <div class="item">
                        <div class="gi-top d-flex justify-content-between align-items-center">
                            <div class="ztag">
                                <span class="zt-<?php
                                                switch ($CommunityData['post_tag']) {
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
                                                ?> mr-2">#<?php
                                                            switch ($CommunityData['post_tag']) {
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
                                                            ?></span>
                                <div class="time d-inline"><span>
                                        <i class="dot mr-2"></i>
                                        <?= $CommunityData['created_at'] ?>
                                    </span></div>
                            </div>
                            <div class="gi-stats d-flex align-items-center">
                                <div class="ml-4">
                                    <i class="fas fa-comment mr-1"></i>
                                    <?= $CommunityData['post_id_count'] ?>
                                </div>
                            </div>
                        </div>
                        <h4 class="item-name"><a href="community/post?pid=<?= $CommunityData['post_id'] ?>&pcon=<?= urlencode($CommunityData['post_head']) ?>">
                                <?= $CommunityData['post_head'] ?>
                            </a></h4>
                        <div class="subject">
                            <div>
                                <?= $CommunityData['post_content'] ?>
                            </div>
                        </div>
                        <div class="cn-owner">
                            <div class="profile-avatar">
                                <img src="<?= $CommunityData['avatar'] ?>">
                            </div>
                            <?php
                            $role = $CommunityData['group'];
                            $roleToClass = [
                                'superadmin' => 'user-name is-level-x is-level-b',
                                'admin' => 'user-name is-level-x is-level-d',
                                'mod' => 'user-name is-level-x is-level-a'
                            ];

                            $CommunityDataclass = $roleToClass[$role] ?? 'user-name';
                            ?>

                            <a href="/community/user/<?= $CommunityData['username'] ?>" target="_blank" class="<?= $CommunityDataclass ?>">
                                <?= $CommunityData['username'] ?>
                                <span><?= $CommunityData['group'] ?></span>
                            </a>
                        </div>
                    </div>

                <?php endforeach; ?>
            </div>
        </div>
    </div>
</section>