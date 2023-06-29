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
                <div id="result" class="cw_list"></div>
                <button style="margin: 0 auto; display: block; font-size: 16px; padding: 10px 20px; background-color: #353b4d; color: #fff; border: none; border-radius: 5px; cursor: pointer;" onclick="runCommand()" id="viewpostbutton">Show Post</button>
                <script>
                    var nextPage = 1;
                    var xhr = new XMLHttpRequest();
                    var uid = "<?php echo $_GET['uid']; ?>";
                    var eps = "<?php echo $_GET['eps']; ?>";

                    function runCommand() {
                        var url = "/watch/epcommentmoreview?uid=" + uid + "&eps=" + eps + "&page=" + nextPage;
                        xhr.open("GET", url, true);
                        xhr.onreadystatechange = function() {
                            if (xhr.readyState === 4 && xhr.status === 200) {
                                var data = JSON.parse(xhr.responseText);
                                var htmlData = data['html'];
                                var htmlData2 = data['page']['status'];
                                var resultElement = document.getElementById("result");
                                resultElement.innerHTML += htmlData;

                                nextPage++;

                                if (htmlData2 === false) {
                                    var buttonElement = document.getElementById("viewpostbutton");
                                    buttonElement.style.display = "none";
                                }
                            }
                        };
                        xhr.send();
                    }

                    document.addEventListener("DOMContentLoaded", runCommand);
                </script>
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
                <script>
                    function addRepyLike(postId) {
                        var post = $("#postrepylikelink" + postId);
                        var liked = post.data("liked");
                        if (!liked) {
                            $.ajax({
                                url: '/watch/episoderepyreppost/' + postId,
                                type: 'POST',
                                success: function(result) {
                                    $('#boardrepylikepost-' + postId).text(parseInt($('#boardrepylikepost-' + postId).text()) + 1);
                                    post.data("liked", 1);
                                }
                            });
                        }
                    }

                    function addRepyDislike(postId) {
                        var post = $("#postrepydislink" + postId);
                        var disliked = post.data("disliked");
                        if (!disliked) {
                            $.ajax({
                                url: '/watch/episoderepydispost/' + postId,
                                type: 'POST',
                                success: function(result) {
                                    $('#boardrepydislikepost-' + postId).text(parseInt($('#boardrepydislikepost-' + postId).text()) + 1);
                                    post.data("disliked", 1);
                                }
                            });
                        }
                    }
                </script>
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
</section>