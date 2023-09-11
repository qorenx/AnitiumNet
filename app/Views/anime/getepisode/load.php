<script>
    let activeBtn;

    const getEmbed = async (embedId) => {
        try {
            if (activeBtn) {
                activeBtn.className = activeBtn.className.replace(' active', '');
            }

            activeBtn = document.getElementById('embed-' + embedId);

            if (activeBtn) {
                activeBtn.className += ' active';
            }

            const response = await fetch(`/embed/<?= $animeData['uid'] ?>/<?= $episodesData[0]['ep_id_name'] ?>/${embedId}`);
            const videoUrl = await response.json();

            document.getElementById('iframe-embed').innerHTML = videoUrl;
        } catch (error) {
            console.error('Error:', error);
        }
    }

    document.addEventListener('DOMContentLoaded', () => getEmbed(<?php echo $episodeFirstEmbed; ?>));
</script>



<script>
    function postVote(voteValue) {
        var xhr = new XMLHttpRequest();
        xhr.open("GET", '/ajax/episodevote/' + voteValue + '/<?php echo urlencode($_GET['uid']); ?>/<?php echo urlencode($_GET['eps']); ?>/', true);
        xhr.setRequestHeader("Content-Type", "application/json");
        xhr.setRequestHeader("Accept", "application/json");
        xhr.onerror = function() {
            console.error('Request failed.');
        }
        xhr.onload = function() {
            if (this.readyState === 4 && this.status === 200) {
                getRating();
            } else {
                console.error('Error:', xhr.status, xhr.statusText);
            }
        };
        xhr.send();
    }

    function getRating() {
        var fn = function() {
            if (this.readyState === 4 && this.status === 200) {
                var data = JSON.parse(this.responseText);
                var htmlData = data['html'];
                var resultElement = document.getElementById("vote-info");
                resultElement.innerHTML = htmlData;
            }
        };

        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = fn;
        xhr.open("GET", "/ajax/episodegetvote/" + <?php echo urlencode($_GET['uid']); ?> + "/" + <?php echo urlencode($_GET['eps']); ?>, true);
        xhr.send();
    }

    document.addEventListener("DOMContentLoaded", getRating);
</script>

<script>
    var nextPage = 1;
    var xhr = new XMLHttpRequest();
    var uid = "<?php echo $_GET['uid']; ?>";
    var eps = "<?php echo $_GET['eps']; ?>";

    function episodemorecomment() {
        var url = "/ajax/episodemorecomment?uid=" + uid + "&eps=" + eps + "&page=" + nextPage;
        xhr.open("GET", url, true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var data = JSON.parse(xhr.responseText);
                var htmlData = data['html'];
                var htmlData2 = data['page']['status'];
                var resultElements = document.getElementsByClassName("cw_list");
                for (let element of resultElements) {
                    element.innerHTML += htmlData;
                }

                nextPage++;

                if (htmlData2 === false) {
                    var buttonElement = document.getElementById("cm-view-more");
                    buttonElement.style.display = "none";
                }
            }
        };
        xhr.send();
    }

    document.addEventListener("DOMContentLoaded", episodemorecomment);
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
    function sendRequest(postid, url, callback) {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", url + postid, true);
        xhr.setRequestHeader("Content-Type", "application/json");
        xhr.setRequestHeader("Accept", "application/json");
        xhr.onerror = function() {
            console.error('Request failed.');
        }
        xhr.onload = function() {
            if (this.readyState === 4 && this.status === 200) {
                callback(postid);
            } else {
                console.error('Error:', xhr.status, xhr.statusText);
            }
        };
        xhr.send();
    }

    function addRepyLike(postid) {
        sendRequest(postid, '/post/epmainlike/', getMainLike);
    }

    function addRepyDislike(postid) {
        sendRequest(postid, '/post/epmaindislike/', getMainLike);
    }

    function addRepycLike(postid) {
        sendRequest(postid, '/post/eprepylike/', getRepyLike);
    }

    function addRepycDislike(postid) {
        sendRequest(postid, '/post/eprepydislike/', getRepyLike);
    }

    function fetchData(postid, url) {
        var fn = function() {
            if (this.readyState === 4 && this.status === 200) {
                var data = JSON.parse(this.responseText);
                var htmlData = data['html'];
                var resultElement = document.getElementById(postid);
                resultElement.innerHTML = htmlData;
            }
        };

        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = fn;
        xhr.open("GET", url + postid, true);
        xhr.send();
    }

    function getMainLike(postid) {
        fetchData(postid, "/ajax/getepmainlike/");
    }

    function getRepyLike(postid) {
        fetchData(postid, "/ajax/geteprepylike/");
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