<?= $this->include('admin/extem/header') ?>

<body>
    <div id="wrapper" data-page="page_home">
        <form action="<?php echo base_url('admin/anime/anime-add'); ?>" method="post">
            <div class="card-body" style="margin: 0% 10%;">
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link active" href="#myanimelist" data-toggle="tab">MyAnimeList</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#animedetails" data-toggle="tab">Anime Details</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#genre" data-toggle="tab">Genre</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#typecountrystatus" data-toggle="tab">Anime TCS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#posterwallpaper" data-toggle="tab">Poster-Wallpaper</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#rawsubdubturk" data-toggle="tab">Raw-Sub-Dub-Turk</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#youtubemangaurl" data-toggle="tab">Youtube-Manga URL</a>
                    </li>
                </ul>
                <div class="tab-content mt-3">
                    <div class="tab-pane fade show active" id="myanimelist">
                        <br>
                        <div class="form-group row">
                            <label for="uid" class="col-sm-4 col-form-label">Myanimelist ID:</label>
                            <div class="col-sm-8">
                                <input type="text" name="uid" id="uid" class="form-control" required>
                            </div>
                        </div><br>
                        <div class="form-group row">
                            <label for="ani_score" class="col-sm-4 col-form-label">Anime Score (7.4 etc):</label>
                            <div class="col-sm-8">
                                <input type="text" name="ani_score" id="ani_score" class="form-control">
                            </div>
                        </div></br>
                        <div class="form-group row">
                            <label for="ani_time" class="col-sm-4 col-form-label">Episode Time (4m, 24m or 1.5h etc):</label>
                            <div class="col-sm-8">
                                <input type="text" name="ani_time" id="ani_time" class="form-control" required>
                            </div>
                        </div><br>
                        <div class="form-group row">
                            <label for="ani_aired" class="col-sm-4 col-form-label">Anime Aired (Oct 4, 2006):</label>
                            <div class="col-sm-8">
                                <input type="date" name="ani_aired" id="ani_aired" class="form-control">
                            </div>
                        </div><br>
                        <div class="form-group row">
                            <label for="ani_aired_fin" class="col-sm-4 col-form-label">Anime Aired Fin (Oct 14, 2007):</label>
                            <div class="col-sm-8">
                                <input type="date" name="ani_aired_fin" id="ani_aired_fin" class="form-control">
                            </div>
                        </div>
                        <br>
                        <div class="form-group row">
                            <label for="ani_studio" class="col-sm-4 col-form-label">Anime Studio:</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <input type="text" id="studio-input" class="form-control">
                                    <div class="input-group-append">
                                        <button class="btn btn-outline-secondary" type="button" onclick="addStudio()">Add</button>
                                    </div>
                                </div><br>
                                <div id="studio-list" class="mt-3"></div>
                            </div>
                        </div>
                        <br>
                        <div class="form-group row">
                            <label for="producers" class="col-sm-4 col-form-label">Anime Producers:</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <input type="text" id="producers-input" class="form-control">
                                    <div class="input-group-append">
                                        <button class="btn btn-outline-secondary" type="button" onclick="addProducers()">Add</button>
                                    </div>
                                </div><br>
                                <div id="producers-list" class="mt-3"></div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="ani_offical_site" class="col-sm-4 col-form-label">Offical WebSite:</label>
                            <div class="col-sm-8">
                                <input type="text" name="ani_offical_site" id="ani_offical_site" class="form-control">
                            </div>
                        </div><br>
                    </div>
                    <div class="tab-pane fade" id="animedetails">
                        <br>
                        <div class="form-group row">
                            <label for="ani_name" class="col-sm-4 col-form-label">Anime Name:</label>
                            <div class="col-sm-8">
                                <input type="text" name="ani_name" id="ani_name" class="form-control" required>
                            </div>
                        </div><br>
                        <div class="form-group row">
                            <label for="ani_jname" class="col-sm-4 col-form-label">Anime Japanese Name:</label>
                            <div class="col-sm-8">
                                <input type="text" name="ani_jname" id="ani_jname" class="form-control" required>
                            </div>
                        </div></br>
                        <div class="form-group row">
                            <label for="ani_ep" class="col-sm-4 col-form-label">Episode(12,24,etc or ?):</label>
                            <div class="col-sm-8">
                                <input type="text" name="ani_ep" id="ani_ep" class="form-control">
                            </div>
                        </div>
                        </br>
                        <div class="form-group row">
                            <label for="ani_release" class="col-sm-4 col-form-label">Anime Release Years:</label>
                            <div class="col-sm-8">
                                <select name="ani_release" id="ani_release" class="form-control">
                                    <?php
                                    $currentYear = intval(date('Y')) + 2;
                                    $startYear = 1917;
                                    for ($i = $currentYear; $i >= $startYear; $i--) {
                                    ?>
                                        <option value="<?= $i ?>"><?= $i ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        </br>
                        <div class="form-group row">
                            <label for="ani_synonyms" class="col-sm-4 col-form-label">Anime Synonyms:</label>
                            <div class="col-sm-8">
                                <input type="text" name="ani_synonyms" id="ani_synonyms" class="form-control" required>
                            </div>
                        </div><br>
                        <div class="form-group row">
                            <label for="ani_synopsis" class="col-sm-4 col-form-label">Synopsis:</label>
                            <div class="col-sm-8">
                                <div class="card">
                                    <div class="card-body p-0">
                                        <textarea class="form-control border-0" id="ani_synopsis" name="ani_synopsis" rows="6"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div></br>
                    </div>
                    <div class="tab-pane fade" id="typecountrystatus">
                        <br>
                        <div class="form-group row">
                            <label for="ani_source" class="col-sm-4 col-form-label">Anime Source:</label>
                            <div class="col-sm-8">
                                <select name="ani_source" id="ani_source" class="form-control">
                                    <option value="1">Manga</option>
                                    <option value="2">LightNovel</option>
                                    <option value="3">Other</option>
                                </select>
                            </div>
                        </div></br>
                        <div class="form-group row">
                            <label for="ani_type" class="col-sm-4 col-form-label">Anime Type:</label>
                            <div class="col-sm-8">
                                <select name="ani_type" id="ani_type" class="form-control">
                                    <option value="1">TV</option>
                                    <option value="2">Movies</option>
                                    <option value="3">Ova</option>
                                    <option value="4">Ona</option>
                                    <option value="5">Special</option>
                                </select>
                            </div>
                        </div><br>
                        <div class="form-group row">
                            <label for="ani_country" class="col-sm-4 col-form-label">Anime Country:</label>
                            <div class="col-sm-8">
                                <select name="ani_country" id="ani_country" class="form-control">
                                    <option value="1">Japanese</option>
                                    <option value="2">Chinese</option>
                                </select>
                            </div>
                        </div><br>
                        <div class="form-group row">
                            <label for="ani_stats" class="col-sm-4 col-form-label">Anime Status:</label>
                            <div class="col-sm-8">
                                <select name="ani_stats" id="ani_stats" class="form-control">
                                    <option value="1">Currently Airing</option>
                                    <option value="2">Finished</option>
                                    <option value="3">Not Yet Aired</option>
                                </select>
                            </div>
                        </div></br>
                        <div class="form-group row">
                            <label for="ani_release_season" class="col-sm-4 col-form-label">Anime Release Season:</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <select name="ani_release_season" id="ani_release_season" class="form-control">
                                        <option value="1">Winter</option>
                                        <option value="2">Spring</option>
                                        <option value="3">Summer</option>
                                        <option value="4">Fall</option>
                                    </select>
                                    <div class="input-group-append">
                                        <span class="input-group-text" id="basic-addon2">Season</span>
                                    </div>
                                </div>
                            </div>
                        </div></br>
                        <div class="form-group row">
                            <label for="ani_rate" class="col-sm-4 col-form-label">Anime Rate:</label>
                            <div class="col-sm-8">
                                <select name="ani_rate" id="ani_rate" class="form-control">
                                    <option value="1">G</option>
                                    <option value="2">PG</option>
                                    <option value="3">PG-13</option>
                                    <option value="4">R</option>
                                    <option value="5">Rx</option>
                                </select>
                            </div>
                        </div></br>
                    </div>
                    <div class="tab-pane fade" id="posterwallpaper">
                        <br>
                        <div class="form-group row">
                            <label for="ani_poster" class="col-sm-4 col-form-label">Poster Url or Path:</label>
                            <div class="col-sm-8">
                                <input type="text" name="ani_poster" id="ani_poster" class="form-control" required>
                            </div>
                        </div></br>
                        <div class="form-group row">
                            <label for="ani_wallpaper" class="col-sm-4 col-form-label">Wallpape Url or Path:</label>
                            <div class="col-sm-8">
                                <input type="text" name="ani_wallpaper" id="ani_wallpaper" class="form-control">
                            </div>
                        </div></br>
                        <div style="position: fixed; right: 10%;">
                            <a href="<?= base_url('/admin/anime/uploadfile') ?>" class="btn btn-primary" target="_blank">UploadFile</a>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="rawsubdubturk">
                        <br>
                        <div class="form-group row">
                            <label for="ani_raw" class="col-sm-4 col-form-label">Ani Raw:</label>
                            <div class="col-sm-8">
                                <select name="ani_raw" id="ani_sub" class="form-control">
                                    <option value="">NO</option>
                                    <option value="1">RAW</option>
                                </select>
                            </div>
                        </div><br>
                        <div class="form-group row">
                            <label for="ani_sub" class="col-sm-4 col-form-label">Ani Sub:</label>
                            <div class="col-sm-8">
                                <select name="ani_sub" id="ani_sub" class="form-control">
                                    <option value="">NO</option>
                                    <option value="1">SUB</option>
                                </select>
                            </div>
                        </div>
                        <br>
                        <div class="form-group row">
                            <label for="ani_dub" class="col-sm-4 col-form-label">Ani Dub:</label>
                            <div class="col-sm-8">
                                <select name="ani_dub" id="ani_dub" class="form-control">
                                    <option value="">NO</option>
                                    <option value="1">DUB</option>
                                </select>
                            </div>
                        </div><br>
                        <div class="form-group row">
                            <label for="ani_turk" class="col-sm-4 col-form-label">Ani Turk:</label>
                            <div class="col-sm-8">
                                <select name="ani_turk" id="ani_turk" class="form-control">
                                    <option value="">NO</option>
                                    <option value="1">TURK</option>
                                </select>
                            </div>
                        </div><br>
                    </div>
                    <div class="tab-pane fade" id="genre">
                        <br>
                        <div class="form-group row">
                            <label for="ani_genre" class="col-sm-4 col-form-label">Genre:</label>
                            <div class="col-sm-8">
                                <div class="input-group">
                                    <input type="text" id="gen-input" class="form-control">
                                    <div class="input-group-append">
                                        <button class="btn btn-outline-secondary" type="button" onclick="addGenre()">Add</button>
                                    </div>
                                </div>
                                <div id="genre-list" class="mt-3"></div>
                            </div>
                        </div><br>
                    </div>
                    <div class="tab-pane fade" id="youtubemangaurl">
                        <br>
                        <div class="form-group row">
                            <label for="ani_pv" class="col-sm-4 col-form-label">Youtube PV:</label>
                            <div class="col-sm-8">
                                <input type="text" name="ani_pv" id="ani_pv" class="form-control" required>
                            </div>
                        </div><br>
                        <div class="form-group row">
                            <label for="ani_manga_url" class="col-sm-4 col-form-label">Manga URL:</label>
                            <div class="col-sm-8">
                                <input type="text" name="ani_manga_url" id="ani_manga_url" class="form-control">
                            </div>
                        </div><br>
                    </div>
                </div>
                <footer style="position:fixed;right:auto;bottom:0;left:0;z-index:1030;" class="fixed-bottom">
                    <div class="card-footer">
                        <input class="btn btn-primary" type="submit" value="Add">
                    </div>
                </footer>
            </div>
        <style>
            .form-check-inline {
                display: inline-block;
                margin-right: 15px;
            }

            .genre-input {
                margin-top: 10px;
                margin-bottom: 10px;
            }
        </style>
        <script>
            var genres = [];

            function addGenre() {
                var input = document.getElementById("gen-input");
                var value = input.value.replace(/,\s*/g, ',');
                if (!value) return;

                genres.push(value);
                input.value = "";

                renderGenres();
            }

            function renderGenres() {
                var container = document.getElementById("genre-list");
                container.innerHTML = "";
                genres.forEach(function(genre) {
                    var formCheck = document.createElement("div");
                    formCheck.className = "form-check";

                    var input = document.createElement("input");
                    input.type = "checkbox";
                    input.name = "ani_genre[]";
                    input.value = genre;

                    var label = document.createElement("label");
                    label.className = "form-check-label";
                    label.textContent = genre;

                    formCheck.appendChild(input);
                    formCheck.appendChild(label);
                    container.appendChild(formCheck);
                });
            }
        </script>
        <style>
            .form-check-inline {
                display: inline-block;
                margin-right: 15px;
            }

            .studio-input {
                margin-top: 10px;
                margin-bottom: 10px;
            }
        </style>
        <script>
            var studios = [];

            function addStudio() {
                var input = document.getElementById("studio-input");
                var value = input.value.replace(/,\s*/g, ',');
                if (!value) return;

                studios.push(value);
                input.value = "";

                renderStudios();
            }

            function renderStudios() {
                var container = document.getElementById("studio-list");
                container.innerHTML = "";
                studios.forEach(function(studio) {
                    var formCheck = document.createElement("div");
                    formCheck.className = "form-check";

                    var input = document.createElement("input");
                    input.type = "checkbox";
                    input.name = "ani_studio[]";
                    input.value = studio;

                    var label = document.createElement("label");
                    label.className = "form-check-label";
                    label.textContent = studio;

                    formCheck.appendChild(input);
                    formCheck.appendChild(label);
                    container.appendChild(formCheck);
                });
            }
        </script>
        <style>
            .form-check-inline {
                display: inline-block;
                margin-right: 15px;
            }

            .producers-input {
                margin-top: 10px;
                margin-bottom: 10px;
            }
        </style>
        <script>
            var producers = [];

            function addProducers() {
                var input = document.getElementById("producers-input");
                var value = input.value.replace(/,\s*/g, ',');
                if (!value) return;

                producers.push(value);
                input.value = "";

                renderProducers();
            }

            function renderProducers() {
                var container = document.getElementById("producers-list");
                container.innerHTML = "";
                producers.forEach(function(studio) {
                    var formCheck = document.createElement("div");
                    formCheck.className = "form-check";

                    var input = document.createElement("input");
                    input.type = "checkbox";
                    input.name = "ani_producers[]";
                    input.value = studio;

                    var label = document.createElement("label");
                    label.className = "form-check-label";
                    label.textContent = studio;

                    formCheck.appendChild(input);
                    formCheck.appendChild(label);
                    container.appendChild(formCheck);
                });
            }
        </script>
        </form>
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