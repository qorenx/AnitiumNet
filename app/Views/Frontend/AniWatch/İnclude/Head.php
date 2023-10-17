<div id="sidebar_menu">
    <button class="btn btn-radius btn-sm btn-secondary toggle-sidebar"><i class="fas fa-angle-left mr-2"></i>Close
        menu</button>
    <div class="sb-setting">
        <div class="header-setting">
            <div class="hs-toggles">
                <a href="type/tv-series" class="hst-item">
                    <div class="hst-icon"><i class="fas fa-list"></i></div>
                    <div class="name"><span>Anime</span></div>
                </a>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <ul class="nav sidebar_menu-list">
        <li class="nav-item"><a class="nav-link" href="/" title="Home"><i class="fas fa-home"></i> Home</a></li>
        <li class="nav-item">
            <a class="nav-link" href="/type/tv"><strong><i class="fas fa-tv"></i> TV</strong></a>
            <a class="nav-link" href="/type/movies"><strong><i class="fas fa-film"></i> Movies</strong></a>
            <a class="nav-link" href="/type/ova"><strong><i class="fas fa-video"></i> OVA</strong></a>
            <a class="nav-link" href="/type/ona"><strong><i class="fas fa-video"></i> ONA</strong></a>
            <a class="nav-link" href="/type/special"><strong><i class="fas fa-star"></i> Special</strong></a>
        </li>
    </ul>
    <div class="clearfix"></div>
</div>
<div id="header" class="header-home" style="z-index:50;">
    <div class="container" style="max-width:100%!important;width:100%!important;">
        <div id="mobile_menu"><i class="fa fa-bars"></i></div>
        <a href="/home" id="logo" title="">
            <img src="<?php echo $Settings['Advanced'][3]['value']; ?>" width="100%" height="auto" alt="">
            <div class="clearfix"></div>
        </a>
        <div id="search" class="">
            <div class="search-content">
                <form id="searchForm" action="/search" autocomplete="off">
                    <a href="/filter" class="filter-icon">Filter</a>
                    <input id="input-field" type="text" class="form-control search-input" name="keyword" placeholder="Search anime..." required="">
                    <button type="submit" class="search-icon"><i class="fas fa-search"></i></button>
                </form>
                <div class="nav search-result-pop" id="search-suggest" style="display: none;">
                    <div id="suggestedItems"></div>
                    <a href="/search?keyword=" class="nav-item nav-bottom">
                        View all results<i class="fa fa-angle-right ml-2"></i>
                    </a>
                </div>
            </div>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.15/lodash.min.js"></script>
        <script>
            let inputField = document.getElementById('input-field');
            let body = document.querySelector('body');
            let searchForm = document.getElementById('searchForm');
            let searchSuggest = document.getElementById('search-suggest');
            let suggestedItems = document.getElementById('suggestedItems');

            inputField.addEventListener('input', _.debounce(() => {
                if (inputField.value.length !== 0) {
                    showResult(inputField.value);
                }
                let navBottom = document.querySelector('.nav-item.nav-bottom');
                navBottom.href = "/search?keyword=" + inputField.value;
            }, 1000));
            inputField.addEventListener('keydown', function(event) {
                if (event.key === "Enter" || event.which === 13) {
                    event.preventDefault();
                    searchForm.submit();
                }
            });
            document.querySelector('.search-icon').addEventListener('click', function(event) {
                event.preventDefault();
                if (inputField.value !== '') {
                    searchForm.submit();
                }
            });
            body.addEventListener('click', (event) => {
                if (!event.target.closest('#search-suggest') && !event.target.matches('#input-field')) {
                    searchSuggest.style.display = 'none';
                    inputField.value = '';
                }
            });

            function showResult(str) {
                if (str.length === 0) {
                    searchSuggest.style.display = 'none';
                    return;
                }
                fetch("<?= site_url('search/suggestions?keyword=') ?>" + str)
                    .then(response => response.json())
                    .then(data => {
                        searchSuggest.style.display = 'block';
                        suggestedItems.innerHTML = data.html;
                    })
                    .catch(error => console.error('Error:', error));
            }
        </script>
        <div class="header-group">
            <div class="anw-group">
                <div class="zrg-list">
                    <div class="item"><a target="_blank" href="<?php echo $Settings['Donation'][0]['value']; ?>" class="zr-social-button tl-btn"><i class="fas fa-donate"></i></a></div>
                    <div class="item"><a href="<?php echo $Settings['Social'][0]['value']; ?>" target="_blank" class="zr-social-button dc-btn"><i class="fab fa-discord"></i></a></div>
                    <div class="item"><a href="<?php echo $Settings['Social'][1]['value']; ?>" target="_blank" class="zr-social-button tw-btn"><i class="fab fa-twitter"></i></a></div>
                    <div class="item"><a href="<?php echo $Settings['Social'][2]['value']; ?>" target="_blank" class="zr-social-button yt-btn"><i class="fab fa-youtube"></i></a></div>
                    <div class="item"><a href="<?php echo $Settings['Social'][3]['value']; ?>" target="_blank" class="zr-social-button fb-btn"><i class="fab fa-facebook"></i></a></div>
                    <div class="item"><a target="_blank" href="<?php echo $Settings['Donation'][1]['value']; ?>" class="zr-social-button tl-btn"><i class="fab fa-bitcoin"></i></a></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="header-setting">
            <div class="hs-toggles">
                <a href="/type/tv" class="hst-item">
                    <div class="hst-icon"><i class="fas fa-list"></i></div>
                    <div class="name"><span>Anime</span></div>
                </a>
                <a href="/type/movies" class="hst-item">
                    <div class="hst-icon"><i class="fas fa-film"></i></div>
                    <div class="name"><span>Movie</span></div>
                </a>
                <a href="/random" class="hst-item">
                    <div class="hst-icon"><i class="fas fa-random"></i></div>
                    <div class="name"><span>Random</span></div>
                </a>
                <a href="/community/board" class="hst-item">
                    <div class="hst-icon"><i class="fas fa-comments"></i></div>
                    <div class="name"><span>Community</span></div>
                </a>
                <div class="clearfix"></div>
            </div>
        </div>
        <div id="pick_menu">
            <div class="pick_menu-ul">
                <ul class="ulclear">
                    <li class="pmu-item pmu-item-home">
                        <a class="pmu-item-icon" href="/" title="Home">
                            <img src="<?php echo base_url(); ?>files/images/pick-home.svg">
                        </a>
                    </li>
                    <li class="pmu-item pmu-item-movies">
                        <a class="pmu-item-icon" href="/movies" title="Movies">
                            <img src="<?php echo base_url(); ?>files/images/pick-movies.svg">
                        </a>
                    </li>
                    <li class="pmu-item pmu-item-show">
                        <a class="pmu-item-icon" href="/tv" title="TV">
                            <img src="<?php echo base_url(); ?>files/images/pick-show.svg">
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <?= $this->include('Backend/User/Loginİn') ?>
        <div id="mobile_search" class=""><i class="fa fa-search"></i></div>
        <div class="clearfix"></div>
    </div>
</div>
<?= $this->include('Backend/User/LoginNotİn') ?>
<?= $this->include('Frontend/AniWatch/İnclude/Qtip') ?>