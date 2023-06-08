<button class="btn btn-primary" style="margin: 10px auto 0; display: grid; place-items:center; margin-bottom: 10px;" id="video-text">
    Promo Video
</button>
<div id="video-container" class="video-container">
    <iframe id="promo-video" src="<?= $webdata['webconvert'] . htmlspecialchars($animetv['ani_pv']) ?>" width="100%" height="100%" frameborder="0" allowfullscreen></iframe>
    <button class="close" onclick="closeVideo()" style="position: absolute; top: 0; right: 0; background-color: transparent; border:none; font-size: 30px; width: 30px; height: 30px; color: #fff;"><i class="fa fa-times"></i></button>
</div>
<script>
    document.getElementById('video-text').addEventListener('click', playVideo);

    function playVideo() {
        var videoContainer = document.getElementById('video-container');
        videoContainer.style.display = 'grid';
    }

    function closeVideo() {
        document.getElementById('promo-video').src = "";
        document.getElementById('video-container').style.display = 'none';
    }
</script>
<style>
    #video-container {
        display: none;
        place-items:center;
        position: fixed;
        z-index: 9999;
        background-color: rgba(0, 0, 0, 0.8);
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
    }

    #video-container iframe {
        width: 80%;
        height: 80%;
    }

    #video-container .close {
        position: absolute;
        top: 10px;
        right: 10px;
        font-size: 30px;
    }

    #video-container .close:hover {
        color: #ccc;
        cursor: pointer;
    }
</style>