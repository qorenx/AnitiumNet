<section class="block_area block_area-comment">
    <div class="block_area-header block_area-header-tabs">
        <div class="float-left bah-heading mr-4">
            <h2 class="cat-heading">Comments</h2>
        </div>
        <div class="float-left bah-setting">
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="container">
        <div class="nav-button-container">
            <button class="nav-button active" data-content="#content1">
                <?php echo $settings['Advanced'][0]['value']; ?>
            </button>
            <button class="nav-button" data-content="#content2">Disqus</button>
        </div>
        <div class="content-container">
            <div class="content" id="content1">
                <section class="block_area block_area-comment" id="comment-block">
                    <div class="show-comments">
                        <div id="content-comments" class="comments-wrap">
                            <div class="sc-header">
                                <div class="sc-h-from">
                                    <a class="btn btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Episode <?= $epID ?></a>
                                </div>
                                <div class="sc-h-title"><i class="far fa-comment-alt mr-2"></i><?php foreach ($epcommentcount as $post) : ?><?= $post['post_count'] ?><?php endforeach ?><span> Comments</span></div>
                                <div class="clearfix"></div>
                            </div>
                            <?php if (auth()->loggedIn()) : ?>
                                <div class="comment-input">
                                    <div class="user-avatar">
                                        <img class="user-avatar-img" src="<?= htmlspecialchars(auth()->user()->avatar) ?>">
                                    </div>
                                    <div class="ci-form">
                                        <div class="user-name">
                                            Comment as <span class="link-highlight ml-1"><?= htmlspecialchars(auth()->user()->username) ?></span>
                                        </div>


<script>
$(document).ready(function(){
    $(".preform").on('submit', function(e){
        e.preventDefault();
        $.ajax({
            url: 'ajax/episodemaincommentinsert',
            type: 'post',
            data: $(this).serialize(),
            success: function(response){
                // Whatever you want to do with the server's response
            }
        });
    });
});
</script>

<form method="post" class="preform preform-dark comment-form">
    <input type="hidden" name="post_ani" value="<?= $epUID ?>">
    <input type="hidden" name="post_ep" value="<?= $epID ?>">
    <textarea id="df-cm-content" class="form-control form-control-textarea comment-subject" name="post_content" maxlength="3000" placeholder="Leave a comment" required></textarea>
    <div class="ci-buttons" id="df-cm-buttons">
        <div class="ci-b-left">
            <div class="cb-li">
                <input type="hidden" name="post_spo" value="0" />
                <input type="checkbox" name="post_spo" value="1" <?= (isset($_POST['post_spo']) && $_POST['post_spo'] == 1) ? 'checked="checked"' : ''; ?> /> Spoil?
            </div>
        </div>
        <div class="ci-b-right">
            <div class="cb-li"><a class="btn btn-sm btn-secondary" id="df-cm-close">Close</a></div>
            <div class="cb-li">
                <button type="submit" class="btn btn-sm btn-primary ml-2">Comment</button>
            </div>
        </div>
    </div>
</form>


                                    </div>
                                </div>
                            <?php else : ?>
                                <div class="comment-input">
                                    <div class="user-avatar">
                                        <img class="user-avatar-img" src="assest/images/no-avatar.png">
                                    </div>
                                    <div class="ci-form">
                                        <div class="user-name">
                                            Login to leave a <span class="link-highlight ml-1">comment</span>
                                        </div>
                                        <textarea id="df-cm-content" onclick="loginmodal()" class="form-control form-control-textarea comment-subject" name="post_content" maxlength="3000" placeholder="You must be logged in to post a comment. If you do not have a membership, register." readonly></textarea>
                                        <div class="ci-buttons" id="df-cm-buttons">
                                            <div class="ci-b-right">
                                                <div class="cb-li"><a class="btn btn-sm btn-secondary" id="df-cm-close">Close</a></div>
                                                <div class="cb-li">
                                                    <button class="btn btn-sm btn-primary ml-2" onclick="loginmodal()">Comment</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php endif; ?>
                            <div class="list-comment">
                                <div class="cw_list"></div>
                                <div class="rep-more mt-3">
                                    <button type="button" class="btn btn-sm" onclick="getEpisodeMoreComment(<?= $epUID ?>,<?= $epID ?>)" id="cm-view-more">
                                        <i class="fas fa-caret-down mr-2"></i><span>View more</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div class="content" id="content2" style="display:none;">
                <?= $this->include('anime/getepisode/comment/disqus') ?>
            </div>
        </div>
    </div>
</section>