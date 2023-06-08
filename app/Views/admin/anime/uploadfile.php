<?= $this->include('admin/extem/header') ?>

<body>
    <div id="wrapper" data-page="page_home">
        <p id="warning" style="color:red; cursor: pointer;">WARNING CLICK READ!</p>
        <div id="warnings" style="display:none;">
            <ul>
                <li>Pictures are saved in the "uploads" folder on the server with a random name.</li>
                <li>Use myanimelist images for poster images.</li>
                <li>I did not add compression so that the wallpaper server does not print.
                    Compress and upload yourself. If you don't want it, upload any image and save xpath.
                    Put it in every anime. Or leave it blank. Let it be black.</li>
                <li>If you are going to delete a poster or wallpaper in an anime, first of all, delete the picture from the server.
                    Otherwise, it will stay on your ftp server and take up space.
                    The deletion process is done from the Admin Control section.</li>
            </ul>
        </div>
        <script>
            document.getElementById("warning").addEventListener("click", function() {
                var warn = document.getElementById("warnings");
                if (warn.style.display === "none") {
                    warn.style.display = "block";
                } else {
                    warn.style.display = "none";
                }
            });
        </script>

        <div class="card" style="margin: 0 20%; border: 6px solid black; background-color: #120000; color: white; font-weight: bold;">
            <div class="card-body">
                <h4 class="card-title text-center">Upload File</h4>
                <form method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="inputFile">Choose File</label>
                        <div class="custom-file">
                            <input type="file" name="file" class="custom-file-input" id="inputFile" required>
                            <label class="custom-file-label" for="inputFile">Choose file...</label>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block mx-auto d-block">Submit</button>
                </form>
            </div>
            <div class="row justify-content-center align-items-center mt-5">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title text-center" style="color:black;">Last Upload</h4>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">İmg</th>
                                        <th scope="col">Size</th>
                                        <th scope="col">Type</th>
                                        <th scope="col">Path</th>
                                    </tr>
                                </thead>
                                <?php foreach ($allfile as $file) : ?>
                                    <tbody id="upload-list">
                                        <td><img width="100" height="100" src="/<?php echo substr($file['path'], 1) ?>" alt="Image"></td>
                                        <td><?= $file['size'] ?></td>
                                        <td><?= $file['type'] ?></td>
                                        <td><button onclick="navigator.clipboard.writeText('<?= $file['path'] ?>')">Copy Path</button></td>
                                    </tbody>
                                <?php endforeach; ?>
                            </table>
                            <div class="pre-pagination mt-5 mb-5">
                                <nav aria-label="Page navigation">
                                    <ul class="pagination pagination-lg justify-content-center">
                                        <ul class="ulclear az-list">
                                            <?php if ($pager) : ?>
                                                <?= $pager->links() ?>
                                            <?php endif ?>
                                        </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <style>
            .pagination {
                display: -ms-flexbox;
                display: flex;
                padding-left: 0;
                list-style: none;
                border-radius: .25rem;
                background: lightslategray;
            }
        </style>

    </div>
    <div style="height:100px;"></div>
    <div id="mask-overlay"></div>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js">
    </script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/js-cookie@rc/dist/js.cookie.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>files/js/app.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>files/js/comman.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>files/js/movie.js"></script>
    <link rel="stylesheet" href="<?php echo base_url(); ?>files/css/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>files/js/function.js"></script>
    </div>
</body>

</html>