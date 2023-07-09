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
                <?= $this->include('community/boardextend/boardpostview') ?>
                <div class="list-comment">

                    <div id="result" class="cw_list"></div>
                    <button style="margin: 0 auto; display: block; font-size: 16px; padding: 10px 20px; background-color: #353b4d; color: #fff; border: none; border-radius: 5px; cursor: pointer;" onclick="runCommand()" id="viewpostbutton">Show Post</button>
                    <script>
                        var nextPage = 1;
                        var xhr = new XMLHttpRequest();
                        var pid = "<?php echo $_GET['pid']; ?>";

                        function runCommand() {
                            var url = "/community/bpviewlist?pid=" + pid + "&page=" + nextPage;
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
                        function addRepyLike(postId) {
                            var post = $("#postrepylikelink" + postId);
                            var liked = post.data("liked");
                            if (!liked) {
                                $.ajax({
                                    url: '/community/boardrepyreppost/' + postId,
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
                                    url: '/community/boardrepydispost/' + postId,
                                    type: 'POST',
                                    success: function(result) {
                                        $('#boardrepydislikepost-' + postId).text(parseInt($('#boardrepydislikepost-' + postId).text()) + 1);
                                        post.data("disliked", 1);
                                    }
                                });
                            }
                        }

                        function addRepycLike(postId) {
                            var post = $("#postrepyclikelink" + postId);
                            var liked = post.data("liked");
                            if (!liked) {
                                $.ajax({
                                    url: '/community/boardrepycreppost/' + postId,
                                    type: 'POST',
                                    success: function(result) {
                                        $('#boardrepyclikepost-' + postId).text(parseInt($('#boardrepyclikepost-' + postId).text()) + 1);
                                        post.data("liked", 1);
                                    }
                                });
                            }
                        }

                        function addRepycDislike(postId) {
                            var post = $("#postrepycdislink" + postId);
                            var disliked = post.data("disliked");
                            if (!disliked) {
                                $.ajax({
                                    url: '/community/boardrepycdispost/' + postId,
                                    type: 'POST',
                                    success: function(result) {
                                        $('#boardrepycdislikepost-' + postId).text(parseInt($('#boardrepycdislikepost-' + postId).text()) + 1);
                                        post.data("disliked", 1);
                                    }
                                });
                            }
                        }
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
                </div>
            </div>
        </div>
        <?= $this->include('community/boardextend/boardfooter') ?>