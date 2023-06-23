<section class="block_area block_area-comment" id="comment-block">
    <div class="show-comments">
        <div id="content-comments" class="comments-wrap">
            <div class="sc-header">
                <div class="sc-h-from">
                    <a class="btn btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Episode <?= $currentData->ep_id_name ?></a>
                </div>
                <div class="sc-h-title"><i class="far fa-comment-alt mr-2"></i><?php foreach ($epcommentcount as $post) : ?><?= $post['post_count'] ?><?php endforeach ?><span> Comments</span></div>
                <div class="clearfix"></div>
            </div>
            <?php if (auth()->loggedIn()) : ?>
                <div class="comment-input">
                    <div class="user-avatar">
                        <img class="user-avatar-img" src="<?= auth()->user()->avatar ?>">
                    </div>
                    <div class="ci-form">
                        <div class="user-name">
                            Comment as <span class="link-highlight ml-1"><?= auth()->user()->username ?></span>
                        </div>
                        <form method="post" action="/watch/epcommentinsert" class="preform preform-dark comment-form">
                            <input type="hidden" name="post_ani" value="<?= $currentData->uid ?>">
                            <input type="hidden" name="post_ep" value="<?= $currentData->ep_id_name ?>">
                            <input type="hidden" name="user_id" value="<?= auth()->user()->id ?>">
                            <input type="hidden" name="post_id" value="<?php echo rand(); ?>">
                            <textarea id="df-cm-content" class="form-control form-control-textarea comment-subject emo-on cm-input-base" name="post_content" maxlength="3000" placeholder="Leave a comment" required=""></textarea>
                            <div class="ci-buttons" id="df-cm-buttons">
                                <div class="ci-b-left">
                                    <div class="cb-li">
                                        <input type="hidden" name="post_spo" value="0" />
                                        <input type="checkbox" name="post_spo" value="1" <?php echo (isset($_POST['post_spo']) && $_POST['post_spo'] == 1) ? 'checked="checked"' : ''; ?> /> Spoil?
                                    </div>
                                </div>
                                <div class="ci-buttons" id="df-cm-buttons">
                                    <div class="ci-b-right" style="display: none;">
                                        <div class="cb-li"><a class="btn btn-sm btn-secondary" id="df-cm-close">Close</a></div>
                                        <div class="cb-li">
                                            <button class="btn btn-sm btn-primary ml-2">Comment</button>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            <?php endif; ?>
            <div class="list-comment">
                <div class="cw_list">
                    <?php $count = 0; ?>
                    <?php foreach ($epcommentlist as $post) : ?>
                        <?php if ($count < 10) : ?>
                            <div class="cw_l-line">
                                <a href="/community/user/<?= $post['username'] ?>" class="user-avatar">
                                    <img class="user-avatar-img" src="<?= $post['avatar'] ?>">
                                </a>
                                <div class="info">
                                    <div class="ihead">
                                        <a href="/community/user/<?= $post['username'] ?>" target="_blank" class="user-name"><?= $post['username'] ?></a>
                                        <div class="time"><?= $post['created_at'] ?></div>
                                    </div>

                                    <?php if ($post['post_spo'] == 1) : ?>
                                        <div class="ibody" id="spoiler_<?= $post['post_id'] ?>">
                                            <button onclick="document.getElementById('spoiler_content_<?= $post['post_id'] ?>').style.display='block'; this.style.display='none'">Spoiler</button>
                                            <div id="spoiler_content_<?= $post['post_id'] ?>" style="display:none;"><?= $post['post_content'] ?></div>
                                        </div>
                                    <?php else : ?>
                                        <div class="ibody">
                                            <p><?= $post['post_content'] ?></p>
                                        </div>
                                    <?php endif; ?>
                                    <div class="ibottom">
                                        <div class="ib-li ib-like">
                                            <button style="color: blue;" type="button" class="btn cm-btn-vote" id="postlink<?= $post['post_id'] ?>" onclick="addLike(<?= $post['post_id'] ?>)">
                                                <i class="far fa-thumbs-up mr-1"></i><span id="postlinkview<?= $post['post_id'] ?>"><?= $post['post_rep'] ?></span>
                                            </button>
                                        </div>
                                        <div class="ib-li ib-dislike">
                                            <button style="color: red;" type="button" class="btn cm-btn-vote" id="postlink<?= $post['post_id'] ?>" onclick="adddisLike(<?= $post['post_id'] ?>)">
                                                <i class="far fa-thumbs-down mr-1"></i><span id="postdislinkview<?= $post['post_id'] ?>"><?= $post['post_disrep'] ?></span>
                                            </button>
                                        </div>
                                        <div class="ib-li">
                                            <a class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-ellipsis-h mr-1"></i>More</a>
                                            <div class="dropdown-menu dropdown-menu-model dropdown-menu-normal" aria-labelledby="ssc-list">
                                            <a href="<?= base_url('reportpost/' . $post['username'] . '/' . $post['post_id'] . '/' . $post['id']) ?>" onclick="return confirm('I think there is a problem with the partition. I want to report!')" class="dropdown-item cm-report">Report</a>                                                <?php if (isset(auth()->user()->groups[0]) && in_array(auth()->user()->groups[0], ['superadmin', 'admin'])) : ?>
                                                    <form method="post" action="/episodepost/delete">
                                                        <input type="hidden" name="id" value="<?= $post['id'] ?>">
                                                        <button type="submit" class="dropdown-item cm-delete" onclick="return confirm('Are you sure you want to delete?')">Delete</button>
                                                    </form>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        <?php else : ?>
                            <div class="cw_l-line item more-posts d-none">
                                <a href="/community/user/<?= $post['username'] ?>" class="user-avatar">
                                    <img class="user-avatar-img" src="<?= $post['avatar'] ?>">
                                </a>
                                <div class="info">
                                    <div class="ihead">
                                        <a href="/community/user/<?= $post['username'] ?>" target="_blank" class="user-name"><?= $post['username'] ?></a>
                                        <div class="time"><?= $post['created_at'] ?></div>
                                    </div>

                                    <?php if ($post['post_spo'] == 1) : ?>
                                        <div class="ibody" id="spoiler_<?= $post['post_id'] ?>">
                                            <button onclick="document.getElementById('spoiler_content_<?= $post['post_id'] ?>').style.display='block'; this.style.display='none'">Spoiler</button>
                                            <div id="spoiler_content_<?= $post['post_id'] ?>" style="display:none;"><?= $post['post_content'] ?></div>
                                        </div>
                                    <?php else : ?>
                                        <div class="ibody">
                                            <p><?= $post['post_content'] ?></p>
                                        </div>
                                    <?php endif; ?>
                                    <div class="ibottom">
                                        <div class="ib-li ib-like">
                                            <button style="color: blue;" type="button" class="btn cm-btn-vote" id="postlink<?= $post['post_id'] ?>" onclick="addLike(<?= $post['post_id'] ?>)">
                                                <i class="far fa-thumbs-up mr-1"></i><span id="postlinkview<?= $post['post_id'] ?>"><?= $post['post_rep'] ?></span>
                                            </button>
                                        </div>
                                        <div class="ib-li ib-dislike">
                                            <button style="color: red;" type="button" class="btn cm-btn-vote" id="postlink<?= $post['post_id'] ?>" onclick="adddisLike(<?= $post['post_id'] ?>)">
                                                <i class="far fa-thumbs-down mr-1"></i><span id="postdislinkview<?= $post['post_id'] ?>"><?= $post['post_disrep'] ?></span>
                                            </button>
                                        </div>
                                        <div class="ib-li">
                                            <a class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-ellipsis-h mr-1"></i>More</a>
                                            <div class="dropdown-menu dropdown-menu-model dropdown-menu-normal" aria-labelledby="ssc-list">
                                                <a href="<?= base_url('report') ?>" onclick="return confirm('I think there is a problem with the partition. I want to report!')" class="dropdown-item cm-report">Report</a>
                                                <?php if (isset(auth()->user()->groups[0]) && in_array(auth()->user()->groups[0], ['superadmin', 'admin'])) : ?>
                                                    <form method="post" action="/episodepost/delete">
                                                        <input type="hidden" name="id" value="<?= $post['id'] ?>">
                                                        <button type="submit" class="dropdown-item cm-delete" onclick="return confirm('Are you sure you want to delete?')">Delete</button>
                                                    </form>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                        <?php endif; ?>
                        <?php $count++; ?>
                    <?php endforeach; ?>
                    <?php if (count($epcommentlist) > 10) : ?>
                        <div class="loading-relative" id="loading-data">
                            <button class="btn-primary loading" onclick="pagination()">
                                <span>View More</span>
                            </button>
                        </div>
                    <?php endif; ?> <script>
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
    <script>
        function addLike(postId) {
            $.ajax({
                url: '/repsystem/episoderep/' + postId,
                type: 'POST',
                success: function(result) {
                    $('#postlinkview' + postId).text(parseInt($('#postlinkview' + postId).text()) + 1);
                }
            });
        }
        function adddisLike(postId) {
            $.ajax({
                url: '/repsystem/episodedisrep/' + postId,
                type: 'POST',
                success: function(result) {
                    $('#postdislinkview' + postId).text(parseInt($('#postdislinkview' + postId).text()) + 1);
                }
            });
        }
    </script>
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
</section>