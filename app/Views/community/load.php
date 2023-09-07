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

    function addMainPostLike(postid) {
        sendRequest(postid, '/post/communityvotelike/', getMainPostLike);
    }

    function addMainPostDislike(postid) {
        sendRequest(postid, '/post/communityvotedislike/', getMainPostLike);
    }

    function addRepyLike(postid) {
        sendRequest(postid, '/post/communitymainlike/', getMainLike);
    }

    function addRepyDislike(postid) {
        sendRequest(postid, '/post/communitymaindislike/', getMainLike);
    }

    function addRepycLike(postid) {
        sendRequest(postid, '/post/communityrepylike/', getRepyLike);
    }

    function addRepycDislike(postid) {
        sendRequest(postid, '/post/communityrepydislike/', getRepyLike);
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

    function getMainPostLike(postid) {
        fetchData(postid, "/ajax/getcommunityvote/");
    }

    function getMainLike(postid) {
        fetchData(postid, "/ajax/getcommunitymainlike/");
    }

    function getRepyLike(postid) {
        fetchData(postid, "/ajax/getcommunityrepylike/");
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