<button class="btn btn-primary play-btn">
    Promo Video
</button>

<style>
    .play-btn {
        margin: 10px auto;
        display: grid;
        place-items: center;
    }

    #promo-container {
        position: fixed;
        top: 0%;
        left: 0%;
        right: 0%;
        bottom: 0%;
        display: none;
        /* initially hidden */
        justify-content: center;
        align-items: center;
        z-index: 999;
        background: rgba(0, 0, 0, .5);
    }

    .video {
        width: 80%;
        height: 80%;
    }
</style>

<div id="promo-container">
    <iframe id="promo-video" src="" allow="autoplay" frameborder="0" class="video"></iframe>
</div>

<script>
    document.querySelector(".play-btn").addEventListener('click', playVideo);
    document.getElementById("promo-container").addEventListener('click', stopVideo);

    function playVideo() {
        const container = document.getElementById("promo-container");
        const video = document.getElementById("promo-video");
        const videoUrl = `https://lic.anitium.net/convert.php?url=<?= htmlspecialchars($AnimeData['ani_pv']) ?>?autoplay=1&autohide=1`;

        video.src = videoUrl;
        container.style.display = "flex"; // show the container
        video.webkitRequestFullScreen();
    }

    function stopVideo(event) {
        if (event.target !== event.currentTarget) return; // Stop the click event if it's not on the container itself

        const container = document.getElementById("promo-container");
        const video = document.getElementById("promo-video");

        video.src = "";
        container.style.display = "none"; // hide the container
    }
</script>