<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title><?php echo $getAdminSettings['Advanced'][0]['value']; ?> Admin Panel</title>
    <?= $this->include('Backend/Default/Anime/İnclude/StyleLoad') ?>
</head>
<body class="bg-theme bg-theme1">
    <div id="wrapper">
        <?= $this->include('Backend/Default/Anime/İnclude/SideBar') ?>
        <?= $this->include('Backend/Default/Anime/İnclude/Header') ?>
        <div class="clearfix"></div>
        <div class="content-wrapper">
            <div class="container-fluid">
                <!--Start Dashboard Content-->
                <div class="row">
                    <div class="col-12 col-lg-12">
                        <div class="card-header">GetAnimeUpdate</div>
                        <form action="<?php echo base_url('admin/anime/getanimeupdate'); ?>" method="post" enctype="multipart/form-data">
                            <?php
                            foreach ($data as $item) { ?>
                                <div class="card-body">
                                    <ul class="nav nav-tabs">
                                        <li class="nav-item">
                                            <a class="nav-link active" href="#manuel" data-toggle="tab">Manuel</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#poster" data-toggle="tab">Anime Poster</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#myanimelistgrabber" data-toggle="tab">Anime Details</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content mt-3">
                                        <div class="tab-pane fade" id="myanimelistgrabber">
                                            <br>
                                            <div class="form-group row">
                                                <label for="ani_name" class="col-sm-4 col-form-label">Anime Name:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name="ani_name" id="ani_name" value="<?= str_replace('/', '-', htmlspecialchars($item['title'], ENT_QUOTES, 'UTF-8')); ?>" class="form-control">
                                                </div>
                                            </div><br>
                                            <div class="form-group row">
                                                <label for="ani_jname" class="col-sm-4 col-form-label">Anime Japanese Name:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name="ani_jname" id="ani_jname" value="<?= $item['title_japanese']; ?>" class="form-control">
                                                </div>
                                            </div></br>
                                            <div class="form-group row">
                                                <label for="ani_synonyms" class="col-sm-4 col-form-label">Anime Synonyms:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name="ani_synonyms" id="ani_synonyms" value="<?php
                                                                                                                    $last_key = count($item['title_synonyms']) - 1;

                                                                                                                    foreach ($item['title_synonyms'] as $key => $synonym) {
                                                                                                                        echo $synonym;
                                                                                                                        if ($key != $last_key) {
                                                                                                                            echo ", ";
                                                                                                                        }
                                                                                                                    }
                                                                                                                    ?>" class="form-control">
                                                </div>
                                            </div><br>
                                            <div class="form-group row">
                                                <label for="ani_ep" class="col-sm-4 col-form-label">Episode:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name="ani_ep" id="ani_ep" value="<?= $item['episodes'] ?? '?' ?>" class="form-control">
                                                </div>
                                            </div></br>
                                            <br>
                                            <div class="form-group row">
                                                <label for="ani_genre" class="col-sm-4 col-form-label">Genre: </label>
                                                <div class="col-sm-8">
                                                    <div class="input-group">
                                                        <input type="text" name="ani_genre" id="ani_genre" value="<?php
                                                                                                                    $genres = array();
                                                                                                                    foreach ($item['genres'] as $genre) {
                                                                                                                        array_push($genres, $genre['name']);
                                                                                                                    }
                                                                                                                    $themes = array();
                                                                                                                    foreach ($item['themes'] as $theme) {
                                                                                                                        array_push($themes, $theme['name']);
                                                                                                                    }
                                                                                                                    $demographics = array();
                                                                                                                    foreach ($item['demographics'] as $demographic) {
                                                                                                                        array_push($demographics, $demographic['name']);
                                                                                                                    }

                                                                                                                    $result = implode(",", array_merge($genres, $themes, $demographics));
                                                                                                                    echo $result;
                                                                                                                    ?>" class="form-control">

                                                    </div>
                                                </div>
                                            </div><br>
                                            <div class="form-group row">
                                                <label for="ani_release" class="col-sm-4 col-form-label">Anime Release Years:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name="ani_release" id="ani_release" value="<?= (empty($item['year'])) ? substr($item['aired']['from'], 0, 4) : $item['year']; ?>" class="form-control">
                                                </div>
                                            </div></br>
                                            <div class="form-group row">
                                                <label for="ani_rate" class="col-sm-4 col-form-label">Anime Rate: </label>
                                                <div class="col-sm-8">
                                                    <select name="ani_rate" id="ani_rate" class="form-control">
                                                        <option value="1" <?php if ($item['rating'] === 'G - All Ages') echo 'selected'; ?>>G - All Ages</option>
                                                        <option value="2" <?php if ($item['rating'] === 'PG - Children') echo 'selected'; ?>>PG - Children</option>
                                                        <option value="3" <?php if ($item['rating'] === 'PG-13 - Teens 13 or older') echo 'selected'; ?>>PG-13 - Teens 13 or older</option>
                                                        <option value="4" <?php if ($item['rating'] === 'R - 17+ (violence & profanity)') echo 'selected'; ?>>R - 17+ (violence & profanity)</option>
                                                        <option value="5" <?php if ($item['rating'] === 'R+ - Mild Nudity') echo 'selected'; ?>>R+ - Mild Nudity</option>
                                                        <option value="6" <?php if ($item['rating'] === 'Rx - Hentai') echo 'selected'; ?>>Rx - Hentai</option>
                                                    </select>
                                                </div>
                                            </div></br>
                                            <br>
                                            <div class="form-group row">
                                                <label for="ani_score" class="col-sm-4 col-form-label">Anime Score:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name="ani_score" id="ani_score" value="<?= $item['score']; ?>" class="form-control">
                                                </div>
                                            </div></br>
                                            <div class="form-group row">
                                                <label for="ani_time" class="col-sm-4 col-form-label">Episode Time:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name="ani_time" id="ani_time" value="<?= $item['duration']; ?>" class="form-control">
                                                </div>
                                            </div><br>
                                            <div class="form-group row">
                                                <label for="ani_aired" class="col-sm-4 col-form-label">Anime Aired:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name="ani_aired" id="ani_aired" value="<?= substr($item['aired']['from'], 0, 10); ?>" class="form-control">
                                                </div>
                                            </div><br>
                                            <div class="form-group row">
                                                <label for="ani_aired_fin" class="col-sm-4 col-form-label">Anime Aired Fin:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name="ani_aired_fin" id="ani_aired_fin" value="<?= !empty($item['aired']['to']) ? substr($item['aired']['to'], 0, 10) : '?' ?>" class="form-control">
                                                </div>
                                            </div><br>
                                            <div class="form-group row">
                                                <label for="ani_stats" class="col-sm-4 col-form-label">Anime Status: </label>
                                                <div class="col-sm-8">
                                                    <select name="ani_stats" id="ani_stats" class="form-control">
                                                        <option value="1" <?php if ($item['status'] === 'Currently Airing') echo 'selected'; ?>>Currently Airing</option>
                                                        <option value="2" <?php if ($item['status'] === 'Finished Airing') echo 'selected'; ?>>Finished</option>
                                                        <option value="3" <?php if ($item['status'] === 'Not yet aired') echo 'selected'; ?>>Not yet Aired</option>
                                                    </select>
                                                </div>
                                            </div></br>
                                            <div class="form-group row">
                                                <label for="ani_release_season" class="col-sm-4 col-form-label">Anime Release Season:</label>
                                                <div class="col-sm-8">
                                                    <div class="input-group">
                                                        <select name="ani_release_season" id="ani_release_season" class="form-control">
                                                            <option value="1" <?php if ($item['season'] === 'winter') echo 'selected'; ?>>Winter</option>
                                                            <option value="2" <?php if ($item['season'] === 'spring') echo 'selected'; ?>>Spring</option>
                                                            <option value="3" <?php if ($item['season'] === 'summer') echo 'selected'; ?>>Summer</option>
                                                            <option value="4" <?php if ($item['season'] === 'fall') echo 'selected'; ?>>Fall</option>
                                                        </select>
                                                        <div class="input-group-append">
                                                            <span class="input-group-text" id="basic-addon2">Season</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div></br>
                                            <div class="form-group row">
                                                <label for="ani_studio" class="col-sm-4 col-form-label">Anime Studio:</label>
                                                <div class="col-sm-8">
                                                    <div class="input-group">
                                                        <input type="text" name="ani_studio" id="ani_studio" value="<?php
                                                                                                                    $studios = array();
                                                                                                                    foreach ($item['studios'] as $studio) {
                                                                                                                        array_push($studios, $studio['name']);
                                                                                                                    }
                                                                                                                    $result = implode(",", array_merge($studios));
                                                                                                                    echo $result;
                                                                                                                    ?>" class="form-control">
                                                    </div><br>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="ani_producers" class="col-sm-4 col-form-label">Anime Producers:</label>
                                                <div class="col-sm-8">
                                                    <div class="input-group">
                                                        <input type="text" name="ani_producers" id="ani_producers" value="<?php
                                                                                                                            $producers = array();
                                                                                                                            foreach ($item['producers'] as $producer) {
                                                                                                                                array_push($producers, $producer['name']);
                                                                                                                            }
                                                                                                                            $result = implode(",", array_merge($producers));
                                                                                                                            echo $result;
                                                                                                                            ?>" class="form-control">
                                                    </div><br>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="form-group row">
                                                <label for="ani_source" class="col-sm-4 col-form-label">Anime Source:</label>
                                                <div class="col-sm-8">
                                                    <select name="ani_source" id="ani_source" class="form-control">
                                                        <option value="1" <?php if ($item['source'] === 'Manga') echo 'selected'; ?>>Manga</option>
                                                        <option value="2" <?php if ($item['source'] === 'Light novel') echo 'selected'; ?>>LightNovel</option>
                                                        <option value="3" <?php if ($item['source'] === 'Original') echo 'selected'; ?>>Original</option>
                                                    </select>
                                                </div>
                                            </div></br>
                                            <div class="form-group row">
                                                <label for="ani_type" class="col-sm-4 col-form-label">Anime Type: </label>
                                                <div class="col-sm-8">
                                                    <select name="ani_type" id="ani_type" class="form-control">
                                                        <option value="1" <?php if ($item['type'] === 'TV') echo 'selected'; ?>>TV</option>
                                                        <option value="2" <?php if ($item['type'] === 'Movie') echo 'selected'; ?>>Movies</option>
                                                        <option value="3" <?php if ($item['type'] === 'OVA') echo 'selected'; ?>>Ova</option>
                                                        <option value="4" <?php if ($item['type'] === 'ONA') echo 'selected'; ?>>Ona</option>
                                                        <option value="5" <?php if ($item['type'] === 'Special') echo 'selected'; ?>>Special</option>
                                                    </select>
                                                </div>
                                            </div><br>
                                            <div class="form-group row">
                                                <label for="ani_synopsis" class="col-sm-4 col-form-label">Synopsis:</label>
                                                <div class="col-sm-8">
                                                    <div class="card">
                                                        <div class="card-body p-0">
                                                            <textarea class="form-control border-0" id="ani_synopsis" name="ani_synopsis" rows="6"><?= str_replace('[Written by MAL Rewrite]', '', $item['synopsis']); ?></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div></br>
                                        </div>
                                        <div class="tab-pane fade show active" id="manuel">
                                            <div class="form-group row">
                                                <label for="uid" class="col-sm-4 col-form-label">UID:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name="uid" id="uid" value="<?= $item['mal_id']; ?>" class="form-control" readonly>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="ani_country" class="col-sm-4 col-form-label">Anime Country: </label>
                                                <div class="col-sm-8">
                                                    <select name="ani_country" id="ani_country" class="form-control">
                                                        <option value="1" <?= $manuel[0]['ani_country'] == 1 ? 'selected' : ''; ?>>Japanese</option>
                                                        <option value="2" <?= $manuel[0]['ani_country'] == 2 ? 'selected' : ''; ?>>Chinese</option>
                                                    </select>
                                                </div>
                                            </div><br>
                                            <div class="form-group row">
                                                <label for="ani_pv" class="col-sm-4 col-form-label">Youtube PV:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name="ani_pv" id="ani_pv" value="<?= $item['trailer']['youtube_id']; ?>" class="form-control">
                                                </div>
                                            </div><br>
                                            <input type="hidden" name="external" id="external" value="<?php $external = array();
                                                                                                        foreach ($item['external'] as $externals) {
                                                                                                            array_push($external, array('name' => $externals['name'], 'url' => $externals['url']));
                                                                                                        }
                                                                                                        $result = json_encode($external);
                                                                                                        echo htmlspecialchars($result, ENT_QUOTES); ?>" class="form-control" readonly>
                                            <input type="hidden" name="relations" id="relations" value="<?php
                                                                                                        $relations = array();
                                                                                                        foreach ($item['relations'] as $relation) {
                                                                                                            $relationKey = $relation['relation'];  // Set relation as main key.
                                                                                                            foreach ($relation['entry'] as &$entry) {
                                                                                                                unset($entry['url']);
                                                                                                                unset($entry['name']);
                                                                                                            }
                                                                                                            $relations[$relationKey] = $relation['entry'];  // Add entries as subkey to the relation key.
                                                                                                        }
                                                                                                        $result = json_encode($relations);
                                                                                                        echo htmlspecialchars($result, ENT_QUOTES);
                                                                                                        ?>" class="form-control" readonly>

                                            <br>
                                            <div class="form-group row">
                                                <label for="ani_manga_url" class="col-sm-4 col-form-label">Manga URL:</label>
                                                <div class="col-sm-8">
                                                    <input type="text" name="ani_manga_url" id="ani_manga_url" value="<?= $manuel[0]['ani_manga_url'] ?>" class="form-control">
                                                </div>
                                            </div><br>
                                            <div class="form-group row">
                                                <label for="ani_quality" class="col-sm-4 col-form-label">Anime Quality:</label>
                                                <div class="col-sm-8">
                                                    <select name="ani_quality" id="ani_quality" class="form-control">
                                                        <option value="1" <?= $manuel[0]['ani_quality'] == 1 ? 'selected' : ''; ?>>HD</option>
                                                        <option value="2" <?= $manuel[0]['ani_quality'] == 2 ? 'selected' : ''; ?>>SD</option>
                                                        <option value="3" <?= $manuel[0]['ani_quality'] == 3 ? 'selected' : ''; ?>>BD</option>
                                                    </select>
                                                </div>
                                            </div><br>
                                        </div>
                                        <div class="tab-pane fade" id="poster">


                                            <style>
                                                .form-group {
                                                    display: flex;
                                                    align-items: center;
                                                    width: 100%;
                                                }

                                                #preview-container {
                                                    flex-grow: 1;
                                                    width: 20%;
                                                    border-right: 1px solid;
                                                    padding: 5px;
                                                }

                                                #preview {
                                                    display: block;
                                                    width: 100%;
                                                    height: auto;
                                                }

                                                #file-input-container {
                                                    flex-grow: 2;
                                                    width: 80%;
                                                    padding: 5px;
                                                }

                                                .file-button-wrapper {
                                                    display: flex;
                                                    gap: 20px;
                                                }

                                                .form-control {
                                                    flex-grow: 1;
                                                }
                                            </style>
                                            <div class="form-group row">
                                                <div id="preview-container">
                                                    <img id="preview" src="<?php echo isset($item['images']['jpg']['large_image_url']) ? $item['images']['jpg']['large_image_url'] : $item['images']['jpg']['image_url']; ?>" />
                                                </div>
                                                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                                                <script>
                                                    $(document).ready(function() {
                                                        $("#copyButton").click(function(event) {
                                                            event.preventDefault(); // prevent form submission
                                                            var $temp = $("<input>");
                                                            $("body").append($temp);
                                                            $temp.val($('#preview').attr('src')).select();
                                                            document.execCommand("copy");
                                                            $temp.remove();
                                                        });
                                                    });
                                                </script>
                                                <input type="hidden" value="<?php
                                                                            if (isset($manuel[0]['ani_manga_url']) && !empty($manuel[0]['ani_manga_url'])) {
                                                                                echo $manuel[0]['ani_manga_url'];
                                                                            } else {
                                                                                echo isset($item['images']['jpg']['large_image_url']) ? $item['images']['jpg']['large_image_url'] : $item['images']['jpg']['image_url'];
                                                                            }
                                                                            ?>" name="ani_poster" id="ani_poster" class="form-control">
                                                <div id="file-input-container">
                                                    <label for="ani_poster" class="col-form-label">Poster İMG:</label>
                                                    <div class="file-button-wrapper">
                                                        <input type="file" name="ani_poster" id="ani_poster" class="form-control">
                                                        <button id="copyButton" type="button">Copy</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                                            <script type="text/javascript">
                                                function readURL(input) {
                                                    if (input.files && input.files[0]) {
                                                        var reader = new FileReader();

                                                        reader.onload = function(e) {
                                                            $('#preview').attr('src', e.target.result);
                                                        }

                                                        reader.readAsDataURL(input.files[0]);
                                                    }
                                                }
                                                setInterval(function() {
                                                    var fileInputValue = $('#ani_poster').val();
                                                    if (fileInputValue) {
                                                        readURL(document.getElementById('ani_poster'));
                                                    }
                                                });
                                            </script>
                                        </div>
                                    </div>

                                    <div class="card-footer">
                                        <input class="btn btn-primary" type="submit" value="Get Anime Update">
                                    </div>
                                <?php } ?>
                        </form>
                    </div>
                </div>
                <!--End Dashboard Content-->
                <div class="overlay toggle-menu"></div>
            </div>
        </div>
        <?= $this->include('Backend/Default/Anime/İnclude/Footer') ?>
    </div>
    <?= $this->include('Backend/Default/Anime/İnclude/ScriptLoad') ?>
</body>
