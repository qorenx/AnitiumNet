<section class="block_area block_area-seasons">
    <div class="block_area-header">
        <div class="bah-heading">
            <h2 class="cat-heading">More Seasons</h2>
        </div>
        <div class="clearfix"></div>
    </div>
    <div id="block_area-seasons" class="os-list">

    </div>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            setTimeout(function() {
                fetch(`/ajax/getanimeseason/<?= $AnimeData['uid'] ?>/<?= $AnimeData['sid'] ?>`, {
                        method: "GET"
                    })
                    .then(response => response.json())
                    .then(data => {
                        if (data['status'] == 0) {
                            var elem = document.getElementById("block_area-seasons");
                            elem.parentNode.removeChild(elem);
                        } else {
                            document.getElementById("block_area-seasons").innerHTML = data['html'];
                        }
                    })
                    .catch(error => console.error('Error:', error));
            }, 1000);
        });
    </script>
</section>