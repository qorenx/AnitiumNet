<section id="torrent-grabbers" class="block_area block_area-torrent-grabbers"></section>
<script>
    function myTorrentSearchFunction() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("torrentSearchİnput");
        filter = input.value.toUpperCase();
        table = document.getElementById("torrentSearch");
        tr = table.getElementsByTagName("tr");
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[0];
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
</script>

<script>
    const animeData = <?php echo json_encode($AnimeData); ?>;
    var attemptCount = 0;

    async function fetchData() {
        try {
            const term = generateWordList(animeData);
            const response = await fetch(`/ajax/torrentgrabber/${term.trim()}`);
            const data = await response.json();
            if (data['status'] === 0) {
                attemptCount++;
                if (attemptCount >= 5) {
                    var elementToBeRemoved = document.getElementById("torrent-grabbers");
                    if (elementToBeRemoved != null) {
                        elementToBeRemoved.parentNode.removeChild(elementToBeRemoved);
                    }
                } else {
                    fetchData();
                }
            } else {
                document.getElementById("torrent-grabbers").innerHTML = data['html'];
            }
        } catch (error) {
            console.error('Error:', error);
        }
    }

    document.addEventListener("DOMContentLoaded", fetchData);

    function generateWordList(animeData) {
        const animeName = animeData.ani_name;
        const animeNameArray = animeName.split(/[^A-Za-z0-9]/).filter(Boolean);

        const selectedWords = animeNameArray.sort(() => Math.random() - Math.random()).slice(0, 7);
        return selectedWords.map(encodeURI).join(' ').trim();
    }
</script>