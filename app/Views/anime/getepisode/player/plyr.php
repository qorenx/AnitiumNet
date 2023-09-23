<body>
    <script src="https://cdn.jsdelivr.net/npm/hls.js@latest"></script>
    <script>
        var anime = {
            "videoanime": "Oshi no Ko",
            "videoepisode": "Mother and Children",
            "image": "https://cdn.myanimelist.net/images/anime/1812/134736l.jpg",
            "filedownload": "https://gogohd.net/download?id=MjAyNjQ3&token=w9bZO4G_ON-3FXWUoTp0cQ&expires=1695468396",
            "videosource": "https://www038.vipanicdn.net/streamhls/f134bc36b9bb59de2ef28a48a7cef6bf/ep.1.1681315084.m3u8",
            "videosource360p": "https://www038.vipanicdn.net/streamhls/f134bc36b9bb59de2ef28a48a7cef6bf/ep.1.1681315084.360.m3u8",
            "videosource480p": "https://www038.vipanicdn.net/streamhls/f134bc36b9bb59de2ef28a48a7cef6bf/ep.1.1681315084.480.m3u8",
            "videosource720p": "https://www038.vipanicdn.net/streamhls/f134bc36b9bb59de2ef28a48a7cef6bf/ep.1.1681315084.720.m3u8",
            "videosource1080p": "https://www038.vipanicdn.net/streamhls/f134bc36b9bb59de2ef28a48a7cef6bf/ep.1.1681315084.1080.m3u8",
            "videosourcebackup": "https://www038.anifastcdn.info/videos/hls/mrK39NQny86A1eXBC6d5NQ/1695475597/202647/f134bc36b9bb59de2ef28a48a7cef6bf/ep.1.1681315084.m3u8",
        };
        function setupSource(video, source) {
            if (Hls.isSupported()) {
                var hls = new Hls();
                hls.loadSource(source);
                hls.attachMedia(video);
                hls.on(Hls.Events.MANIFEST_PARSED, function() {
                    video.play();
                });
            } else if (video.canPlayType('application/vnd.apple.mpegurl')) {
                video.src = source;
                video.addEventListener('loadedmetadata', function() {
                    video.play();
                });
            }
        }
        var video = document.createElement('video');
        video.id = 'video';
        video.controls = true;
        document.body.appendChild(video);
        setupSource(video, anime.videosource);
    </script>
</body>
