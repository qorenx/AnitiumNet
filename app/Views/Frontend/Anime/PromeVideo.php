<button class="btn btn-primary play-btn">Promo Video</button>
<div id="promo-container">
    <iframe id="promo-video" src="" allow="autoplay" frameborder="0"></iframe>
</div>

<script>
    const playBtn = document.querySelector(".play-btn");
    const promoContainer = document.querySelector("#promo-container");
    const promoVideo = document.querySelector("#promo-video");

    playBtn.addEventListener('click', playPromoVideo);
    promoContainer.addEventListener('click', stopPromoVideo);

    function playPromoVideo() {
        const videoUrl = `https://www.youtube.com/embed/<?= htmlspecialchars($AnimeData['ani_pv']) ?>?enablejsapi=1&wmode=opaque&autoplay=1`;

        promoVideo.src = videoUrl;
        promoContainer.style.display = "flex";
        promoVideo.webkitRequestFullScreen();
    }

    function stopPromoVideo(event) {
        if (event.target !== promoContainer) return;

        promoVideo.src = "";
        promoContainer.style.display = "none";
    }
</script>
<style>
    .play-btn {
        margin: 10px auto;
        display: grid;
        place-items: center;
    }

    #promo-container {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        display: none;
        justify-content: center;
        align-items: center;
        z-index: 999;
        background: rgba(0, 0, 0, .5);
    }

    #promo-video {
        width: 80%;
        height: 80%;
    }
</style>