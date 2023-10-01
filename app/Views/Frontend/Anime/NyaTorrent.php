<section id="torrent-grabbers" class="block_area block_area-torrent-grabbers">
    <script>
        const animeData = <?php echo json_encode($AnimeData); ?>;
        var attemptCount = 0;

        async function GetTorrentGrabber() {
            try {
                const term = generateWordList(animeData);
                const response = await fetch(`/ajax/gettorrentgrabber/${term.trim()}`);
                const data = await response.json();
                if (data['status'] === 0) {
                    attemptCount++;
                    if (attemptCount >= 5) {
                        var elementToBeRemoved = document.getElementById("torrent-grabbers");
                        if (elementToBeRemoved != null) {
                            elementToBeRemoved.parentNode.removeChild(elementToBeRemoved);
                        }
                    } else {
                        GetTorrentGrabber();
                    }
                } else {
                    document.getElementById("torrent-grabbers").innerHTML = data['html'];
                }
            } catch (error) {
                console.error('Error:', error);
            }
        }

        document.addEventListener("DOMContentLoaded", GetTorrentGrabber);

        function generateWordList(animeData) {
            const animeName = animeData.ani_name;
            const animeNameArray = animeName.split(/[^A-Za-z0-9]/).filter(Boolean);

            const selectedWords = animeNameArray.sort(() => Math.random() - Math.random()).slice(0, 7);
            return selectedWords.map(encodeURI).join(' ').trim();
        }
    </script>
</section>