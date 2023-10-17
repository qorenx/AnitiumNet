<script>
    //Anime Listesini Çekmektedir. Bekleme süresi 1 saniyedir.
    const getAnimeList = async (uid) => {
        try {
            let data = await apiFetch(`ajax/episodelist/` + uid);
            document.getElementById('episodes-content').innerHTML = data.html;
            getEmbedServer(null, <?php echo $_GET['uid']; ?>, <?php echo $_GET['eps']; ?>);
        } catch (error) {
            console.error('Error:', error);
        }
    }
    document.addEventListener('DOMContentLoaded', () => setTimeout(() => getAnimeList(<?php echo $_GET['uid']; ?>), 2000));
</script>
<script>
    // Embed Server Listesini Alıyor. Ve Embed, Yorumlar, Rating ve Prev-Next Button çekmektedir.
    let currentRequest = null;
    let activeEps = null;

    const getEmbedServer = async (event, uid, eps) => {

        if (activeEps !== null) {
            document.querySelectorAll(`.ep-item-${activeEps}`).forEach(item => item.classList.remove('active'));
        }

        if (event) {
            event.preventDefault();
            document.querySelectorAll(`.ep-item-${eps}`).forEach(item => item.classList.add('active'));
            activeEps = eps;
        }

        let newUrl = '/watch?anime=<?= urlencode($_GET['anime']) ?>&uid=' + uid + '&eps=' + eps;
        history.pushState({
            path: newUrl
        }, '', newUrl);

        try {
            const thisRequest = {};
            currentRequest = thisRequest;

            let data = await apiFetch(`ajax/embedserver/${uid}/${eps}`);

            if (thisRequest === currentRequest) {
                if (document.querySelectorAll(`.ep-item-${eps}`).length > 0 && !event) {
                    document.querySelector(`.ep-item-${eps}`).classList.add('active');
                    activeEps = eps;
                }

                document.getElementById('player-servers').innerHTML = data.html;
                if (data.embedFirst) {
                    document.getElementById('iframe-embed').innerHTML =
                        '<div class="loading-relative loading-box" id="embed-loading">' +
                        '<div class="loading">' +
                        '<div class="span1"></div>' +
                        '<div class="span2"></div>' +
                        '<div class="span3"></div>' +
                        '</div>' +
                        '</div>';
                    getEmbed(uid, eps, data.embedFirst);
                    getRating(uid, eps);
                    getEpisodeCommentSystem(uid, eps);
                    getEpisodePrevNext(uid, eps);
                } else {
                    document.getElementById('embed-loading').innerHTML = '<img src="https://i.hizliresim.com/6bfh4ym.gif" style="width:100%; height:100%;position: absolute;">';
                    document.getElementById('actor-lists').innerHTML = '';
                }
            }
        } catch (error) {
            console.error('Error:', error);
        }
    }

    const getEpisodePrevNext = async (uid, eps) => {
        try {
            let data = await apiFetch(`ajax/episodeprevnext/${uid}/${eps}`);
            document.getElementById('episode-prev-next').innerHTML = data.html;

        } catch (error) {
            console.error('Error:', error);
        }
    }
</script>
<script>
    // Embed ve MultiEmbed Çeker.
    let activeBtn;
    const apiFetch = async (url) => await (await fetch(url)).json();

    const replaceActiveBtn = (embedId) => {
        if (activeBtn) activeBtn.className = activeBtn.className.replace(' active', '');
        activeBtn = document.getElementById('embed-' + embedId);
        if (activeBtn) activeBtn.className += ' active';
    }

    const extractIframeUrl = (url) => {
        let iframeSrcRegExp = /<iframe[^>]*src="([^"]*)"[^>]*><\/iframe>/i;
        let srcName = '',
            iframeMatch = url.match(iframeSrcRegExp);
        if (iframeMatch) {
            let hostname_parts = new URL(iframeMatch[1]).hostname.split('.');
            srcName = hostname_parts.length >= 2 ? hostname_parts[hostname_parts.length - 2] : hostname_parts[0];
        }
        return srcName.charAt(0).toUpperCase() + srcName.slice(1);
    }

    const getEmbed = async (uid, eps, embedId) => {
        try {
            document.getElementById('iframe-embed').innerHTML =
                '<div class=\"loading-relative loading-box\" id=\"embed-loading\">' +
                '<div class=\"loading\">' +
                '<div class=\"span1\"></div>' +
                '<div class=\"span2\"></div>' +
                '<div class=\"span3\"></div>' +
                '</div>' +
                '</div>';
            replaceActiveBtn(embedId);
            let data = await apiFetch(`ajax/embed/${uid}/${eps}/${embedId}`);
            document.getElementById('iframe-embed').innerHTML = data[0];
            let ulContainer = document.getElementById("embed-list");
            ulContainer.innerHTML = '';
            if (Array.isArray(data)) {
                data.forEach((url, index) => {
                    if (index === 1) {
                        let firstElement = ulContainer.getElementsByTagName('span')[0];
                        if (firstElement) firstElement.remove();
                    }
                    let li = document.createElement("span");
                    li.className = "toggle-basic";
                    li.style.margin = '10px';
                    li.style.border = '1px solid #000';
                    let icon = document.createElement("i");
                    icon.className = "fa-solid fa-circle-play";
                    icon.style.color = "lightgrey";
                    let link = document.createElement("a");
                    link.href = "#";
                    link.innerText = extractIframeUrl(url);
                    link.onclick = function(e) {
                        e.preventDefault();
                        document.getElementById('iframe-embed').innerHTML = url;
                    };
                    link.appendChild(icon);
                    li.appendChild(link);
                    ulContainer.appendChild(li);
                });
            }
        } catch (error) {
            console.error('Error:', error);
        }
    }
</script>
<script>
    //Episode Sezon Listesi olduğu zaman "Select" içindeki "1-100 veya 401-500 gibi yerleri seçiyor."
    document.addEventListener('click', function(event) {
        if (event.target.matches('.ep-page-item')) {
            let clickedElement = event.target;

            document.querySelectorAll('.ep-page-item').forEach((element) => {
                element.classList.remove('active');
            });
            document.querySelectorAll('.ep-page-item .ic-active').forEach((element) => {
                element.style.display = 'none';
            });
            clickedElement.classList.add('active');
            clickedElement.querySelector('.ic-active').style.display = 'block';
            document.querySelectorAll('.ss-list-min').forEach((element) => {
                element.style.display = 'none';
            });
            document.querySelectorAll('.ss-list-min').forEach((element) => {
                element.classList.remove('active');
            });
            let pageId = `episodes-page-${clickedElement.dataset.page}`;
            document.getElementById(pageId).style.display = 'block';
            document.getElementById(pageId).classList.add('active');
            document.getElementById('current-page').textContent = clickedElement.textContent.trim();
        }
    });
</script>
<script>
    //Episode Rating çekiyor ayrıca POST yaparak oy verebiliyor.
    const getRating = (uid, epIdName) => {
        let fn = function() {
            if (this.readyState === 4 && this.status === 200) {
                let data = JSON.parse(this.responseText);
                document.getElementById("vote-info").innerHTML = data['html'];
            }
        };
        let xhr = new XMLHttpRequest();
        xhr.onreadystatechange = fn;
        xhr.open("GET", "/ajax/episodegetvote/" + uid + "/" + epIdName, true);
        xhr.send();
    }

    const EpisodeVote = (voteValue, epUID, epID) => {
        let xhr = new XMLHttpRequest();
        xhr.open("POST", '/ajax/episodevote/' + voteValue + '/' + epUID + '/' + epID, true);
        xhr.setRequestHeader("Content-Type", "application/json");
        xhr.setRequestHeader("Accept", "application/json");
        xhr.onerror = function() {
            console.error('Request failed.');
        }
        xhr.onload = function() {
            if (this.readyState === 4 && this.status === 200) getRating(epUID, epID);
            else console.error('Error:', xhr.status, xhr.statusText);
        };
        xhr.send();
    }
</script>
<script>
    $(document).ready(function() {
        $('.nav-button').click(function() {
            $('.nav-button.active').removeClass('active');
            $(this).addClass('active');
            $('.content').hide();
            $($(this).data('content')).show();
        });
    });
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
    const getEpisodeCommentSystem = async (uid, eps) => {
        try {
            let data = await apiFetch(`/ajax/episodecommentsystem/${uid}/${eps}`);
            document.getElementById('anitium-comment-system').innerHTML = data.html;
            getEpisodeMoreComment(uid, eps, nextPage = 1);
        } catch (error) {
            console.error('Error:', error);
        }
    }

    function getEpisodeMoreComment(uid, eps) {
        var xhr = new XMLHttpRequest();
        var url = "/ajax/episodemorecomment/" + uid + "/" + eps + "?page=" + nextPage;
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
        sendRequest(postid, 'ajax/epmainlike/', getMainLike);
    }

    function addRepyDislike(postid) {
        sendRequest(postid, 'ajax/epmaindislike/', getMainLike);
    }

    function addRepycLike(postid) {
        sendRequest(postid, 'ajax/eprepylike/', getRepyLike);
    }

    function addRepycDislike(postid) {
        sendRequest(postid, 'ajax/eprepydislike/', getRepyLike);
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
        fetchData(postid, "ajax/getepmainlike/");
    }

    function getRepyLike(postid) {
        fetchData(postid, "ajax/geteprepylike/");
    }
</script>