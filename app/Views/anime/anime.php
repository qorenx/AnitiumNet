<?= $this->include('anime/getanime/header') ?>
<?= $this->include('anime/extend/templates/head') ?>

<body data-page="movie_info">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <div class="clearfix"></div>
        <div id="main-wrapper" date-page="movie_info">
            <?= $this->include('anime/getanime/include/details') ?>
            <div class="container" style="max-width:100%!important;width:100%!important;">
                <div id="main-content">
                    <section id="block_area-seasons" class="block_area block_area-seasons">
                        <script>
                            document.addEventListener("DOMContentLoaded", function() {
                                fetch(`/ajax/getanimeseason/<?= $AnimeData['uid'] ?>`, {
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
                            });
                        </script>
                    </section>
                    <?= $this->include('anime/getanime/include/recommended') ?>
                    <div class="clearfix"></div>
                </div>
                <?= $this->include('anime/getanime/sidenav') ?>
                <div class="clearfix"></div>
            </div>
        </div>
        <?= $this->include('anime/getanime/footer') ?>
        <div id="mask-overlay"></div>
        <?= $this->include('anime/loadscript') ?>
    </div>
</body>

</html>