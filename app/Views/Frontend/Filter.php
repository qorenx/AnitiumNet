<?= $this->include('Frontend/İnclude/Header') ?>

<body data-page="page_anime">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper">
        <?= $this->include('Frontend/İnclude/Head') ?>
        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page page-az page-filter">
            <div class="container">
                <div class="prebreadcrumb">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/home">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Filter</li>
                        </ol>
                    </nav>
                </div>
                <section class="block_area block_area_category">
                    <div id="filter-block">
                        <button id="toggle-filter" class="btn btn-radius btn-sm btn-secondary"><i class="fas fa-plus-circle mr-2"></i>Advanced search
                        </button>
                        <div id="cate-filter" class="category_filter">
                            <div class="category_filter-content">
                                <form method="get" id="filter-form">
                                    <div class="cfc-min-block cfc-min-block-date">
                                        <div class="ni-head mb-3"><strong>Filter</strong></div>
                                        <div class="cmb-item cmb-type">
                                            <div class="ni-head">Type</div>
                                            <div class="nl-item">
                                                <div class="nli-select">
                                                    <select class="custom-select" name="type">
                                                        <option value="">All</option>
                                                        <option value="1">TV</option>
                                                        <option value="2">Movie</option>
                                                        <option value="3">OVA</option>
                                                        <option value="4">ONA</option>
                                                        <option value="5">Special</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="cmb-item cmb-type">
                                            <div class="ni-head">Country</div>
                                            <div class="nl-item">
                                                <div class="nli-select">
                                                    <select class="custom-select" name="country">
                                                        <option value="">All</option>
                                                        <option value="1">Japanese</option>
                                                        <option value="2">Chinese</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="cmb-item cmb-status">
                                            <div class="ni-head">Status</div>
                                            <div class="nl-item">
                                                <div class="nli-select">
                                                    <select class="custom-select" name="stats">
                                                        <option value="">All</option>
                                                        <option value="1">Currently Airing</option>
                                                        <option value="2">Finished Airing</option>
                                                        <option value="3">Not yet Aired</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="cmb-item">
                                            <div class="ni-head">Rate</div>
                                            <div class="nl-item">
                                                <div class="nli-select">
                                                    <select class="custom-select" name="rate">
                                                        <option value="">All</option>
                                                        <option value="1">G</option>
                                                        <option value="2">PG</option>
                                                        <option value="3">PG-13</option>
                                                        <option value="4">R-17+</option>
                                                        <option value="5">R+</option>
                                                        <option value="6">Rx</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="cmb-item">
                                            <div class="ni-head">Source</div>
                                            <div class="nl-item">
                                                <div class="nli-select">
                                                    <select class="custom-select" name="source">
                                                        <option value="">All</option>
                                                        <option value="1">LightNovel</option>
                                                        <option value="2">Manga</option>
                                                        <option value="3">Original</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="cmb-item">
                                            <div class="ni-head">Season</div>
                                            <div class="nl-item">
                                                <div class="nli-select">
                                                    <select class="custom-select" name="season">
                                                        <option value="">All</option>
                                                        <option value="1">Spring</option>
                                                        <option value="2">Summer</option>
                                                        <option value="3">Fall</option>
                                                        <option value="4">Winter</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="cmb-item">
                                            <div class="ni-head">Language</div>
                                            <div class="nl-item">
                                                <div class="nli-select">
                                                    <select class="custom-select" name="language">
                                                        <option value="">All</option>
                                                        <option value="1">Raw</option>
                                                        <option value="2">Sub</option>
                                                        <option value="3">Dub</option>
                                                        <option value="4">Turk</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="cfc-min-block cfc-min-block-date">
                                        <div class="cmb-item cmb-date">
                                            <div class="ni-head mr-2">Airing Date</div>
                                            <div class="nl-item">
                                                <div class="nli-select">
                                                    <select class="custom-select" name="aired_year">
                                                        <option value="">Year</option>
                                                        <?php
                                                        $current_year = date("Y");
                                                        $start_year = 1917;
                                                        for ($i = $current_year; $i >= $start_year; $i--) {
                                                            echo '<option value="' . $i . '">' . $i . '</option>';
                                                        }
                                                        ?>
                                                    </select>
                                                </div>
                                                <div class="nli-select">
                                                    <select class="custom-select" name="aired_month">
                                                        <option value="">Month</option>
                                                        <?php
                                                        for ($i = 1; $i <= 12; $i++) {
                                                            $formatted_value = str_pad($i, 2, '0', STR_PAD_LEFT);
                                                            echo '<option value="' . $formatted_value . '">' . $formatted_value . '</option>';
                                                        }
                                                        ?>
                                                    </select>
                                                </div>
                                                <div class="nli-select">
                                                    <select class="custom-select" name="aired_day">
                                                        <option value="">Day</option>
                                                        <?php
                                                        for ($i = 1; $i <= 31; $i++) {
                                                            $formatted_value = str_pad($i, 2, '0', STR_PAD_LEFT);
                                                            echo '<option value="' . $formatted_value . '">' . $formatted_value . '</option>';
                                                        }
                                                        ?>
                                                    </select>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                        <div class="cfc-min-block">
                                            <div class="cmb-item">
                                                <div class="ni-head">Sort</div>
                                                <div class="nl-item">
                                                    <div class="nli-select">
                                                        <select class="custom-select" name="sort">
                                                            <option value="default">Default</option>
                                                            <option value="recently_added">Recently Added</option>
                                                            <option value="recently_updated">Recently Updated</option>
                                                            <option value="score">Score</option>
                                                            <option value="name_az">Name A-Z</option>
                                                            <option value="released_date">Released Date</option>
                                                            <option value="most_watched">Most Watched</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>

                                    <div class="cfc-item cfc-item-large cfc-genre">
                                        <div class="ni-head">Genre</div>
                                        <div class="ni-list">
                                            <input type="hidden" id="f-genre-ids" name="genres" value="">
                                            <?php
                                            $genres = [
                                                'Action', 'Adventure', 'Cars', 'Comedy', 'Dementia', 'Demons', 'Drama', 'Ecchi', 'Fantasy', 'Game',
                                                'Harem', 'Historical', 'Horror', 'Isekai', 'Josei', 'Kids', 'Magic', 'Martial Arts', 'Mecha', 'Military',
                                                'Music', 'Mystery', 'Parody', 'Police', 'Psychological', 'Romance', 'Samurai', 'School', 'Sci-Fi', 'Seinen',
                                                'Shoujo', 'Shoujo Ai', 'Shounen', 'Shounen Ai', 'Slice of Life', 'Space', 'Sports', 'Super Power',
                                                'Supernatural', 'Thriller', 'Vampire'
                                            ];
                                            foreach ($genres as $index => $genre) {
                                                echo "<div class=\"btn btn-sm btn-radius btn-filter-item f-genre-item \">{$genre}</div>";
                                            }
                                            ?>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                    <script>
                                        document.querySelectorAll('.f-genre-item').forEach(btn => {
                                            btn.addEventListener('click', () => {
                                                btn.classList.toggle('active');
                                                let activeGenres = Array.from(document.querySelectorAll('.f-genre-item.active'))
                                                    .map(btn => btn.innerText)
                                                    .join(',');
                                                document.getElementById('f-genre-ids').value = activeGenres;
                                            });
                                        });
                                    </script>
                                    <div class="clearfix"></div>
                                    <div class="cfc-button mt-4">
                                        <button class="btn btn-primary"><strong>Filter</strong></button>
                                        <div class="clearfix"></div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="block_area-header block_area-header-tabs">
                        <div class="float-left bah-heading mr-4">
                            <h2 class="cat-heading">Search results for:</h2>
                        </div>
                        <div class="float-right bah-result">
                            <span id="count" style="line-height: 40px;"></span>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="tab-content">
                        <div class="block_area-content block_area-list film_list film_list-grid film_list-wfeature">
                            <div id="filter" class="film_list-wrap">
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <script>
                        var nextPage = 1;
                        var xhr = new XMLHttpRequest();
                        var type = "<?php echo isset($_GET['type']) ? $_GET['type'] : ''; ?>";
                        var country = "<?php echo isset($_GET['country']) ? $_GET['country'] : ''; ?>";
                        var stats = "<?php echo isset($_GET['stats']) ? $_GET['stats'] : ''; ?>";
                        var rate = "<?php echo isset($_GET['rate']) ? $_GET['rate'] : ''; ?>";
                        var source = "<?php echo isset($_GET['source']) ? $_GET['source'] : ''; ?>";
                        var season = "<?php echo isset($_GET['season']) ? $_GET['season'] : ''; ?>";
                        var language = "<?php echo isset($_GET['language']) ? $_GET['language'] : ''; ?>";
                        var aired_year = "<?php echo isset($_GET['aired_year']) ? $_GET['aired_year'] : ''; ?>";
                        var aired_month = "<?php echo isset($_GET['aired_month']) ? $_GET['aired_month'] : ''; ?>";
                        var aired_day = "<?php echo isset($_GET['aired_day']) ? $_GET['aired_day'] : ''; ?>";
                        var sort = "<?php echo isset($_GET['sort']) ? $_GET['sort'] : ''; ?>";
                        var genres = "<?php echo isset($_GET['genres']) ? $_GET['genres'] : ''; ?>";

                        function runFilterCommand() {
                            var url = "/ajax/getfilter?type=" + type + "&country=" + country + "&stats=" + stats + "&rate=" + rate + "&source=" + source +
                                "&season=" + season + "&language=" + language + "&aired_year=" + aired_year + "&aired_month=" + aired_month +
                                "&aired_day=" + aired_day + "&sort=" + sort + "&genres=" + genres + "&page=" + nextPage;
                            xhr.open("GET", url, true);
                            xhr.onreadystatechange = function() {
                                if (xhr.readyState === 4 && xhr.status === 200) {
                                    var data = JSON.parse(xhr.responseText);
                                    var htmlData = data['html'];
                                    var htmlData2 = data['page']['status'];
                                    var htmlData3 = data['count'];
                                    var resultElement = document.getElementById("filter");
                                    var resultCountElement = document.getElementById("count");
                                    resultElement.innerHTML += htmlData;
                                    resultCountElement.innerHTML = htmlData3 + ' results';
                                    nextPage++;
                                }
                            };
                            xhr.send();
                        }
                        document.addEventListener("DOMContentLoaded", runFilterCommand);
                        window.onscroll = function() {
                            var d = document.documentElement;
                            var offset = d.scrollTop + window.innerHeight;
                            var height = d.offsetHeight;

                            if (offset >= height - 1) {
                                runFilterCommand();
                            }
                        };
                    </script>
                </section>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <?= $this->include('Frontend/İnclude/Footer') ?>
    <?= $this->include('Frontend/İnclude/LoadScript') ?>
    <div id="mask-overlay"></div>
</body>