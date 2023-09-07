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
<div id="header" class="header-home ">
    <div class="container" style="max-width:100%!important;width:100%!important;">
        <div id="mobile_menu"><i class="fa fa-bars"></i></div>
        <a href="/home" id="logo" title="">
            <img src="<?php echo $settings['Advanced'][3]['value']; ?>" width="100%" height="auto" alt="">
            <div class="clearfix"></div>
        </a>

        <div id="search">
            <div class="search-content">
                <form action="<?= site_url('search') ?>" autocomplete="off">
                    <a href="<?= site_url('filter') ?>" class="filter-icon">Filter</a>
                    <input id="input-field" type="text" class="form-control search-input" name="keyword" placeholder="Search anime..." required="" onkeyup="showResult(this.value)">
                    <button type="submit" class="search-icon"><i class="fas fa-search"></i></button>
                </form>
                <div id="search-loading" style="display: none;z-index: 9999;">Loading...</div>
                <div id="search-suggest" style="display: none; background-color: #000; z-index: 9999;"></div>
            </div>
        </div>

        <script>
            let timeoutId;
            let inputField = document.getElementById('input-field');
            let body = document.querySelector('body');

            inputField.addEventListener('input', () => {
                showResult(inputField.value)
            });

            body.addEventListener('click', () => {
                document.getElementById('search-suggest').style.display = 'none';
            });

            function showResult(str) {
                if (str.length == 0) {
                    document.getElementById('search-suggest').style.display = 'none';
                    return;
                } else {
                    document.getElementById('search-loading').style.display = 'block';

                    if (timeoutId) clearTimeout(timeoutId);

                    timeoutId = setTimeout(() => {
                        let xmlhttp = new XMLHttpRequest();
                        xmlhttp.onreadystatechange = () => {
                            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                                document.getElementById('search-loading').style.display = 'none';
                                document.getElementById('search-suggest').style.display = 'block';
                                const result = JSON.parse(xmlhttp.responseText).result;
                                let suggestHTML = '';
                                result.forEach((item) => {
                                    suggestHTML += '<div style="display: flex; align-items: center; z-index: 9999;">';
                                    suggestHTML += '<div style="flex-shrink: ; margin-right: 10px; z-index: 9999;">';
                                    suggestHTML += '<a href="<?= site_url('anime/') ?>' + item.uid + '/' + item.ani_name.replace(/\s+/g, '-').toLowerCase() + '">';
                                    suggestHTML += '<img data-src="' + item.ani_poster + '" class="film-poster-img lazyloaded" src="' + item.ani_poster + '" width="60" height="80">';
                                    suggestHTML += '</a>';
                                    suggestHTML += '</div>';
                                    suggestHTML += '<div>';
                                    suggestHTML += '<a class="film-name" href="<?= site_url('anime/') ?>' + item.uid + '/' + (item.ani_name.length > 35 ? item.ani_name.substring(0, 25) + '...' : item.ani_name.replace(/\s+/g, '-')).toLowerCase() + '">' + (item.ani_name.length > 25 ? item.ani_name.substring(0, 45) + '...' : item.ani_name) + '</a>';
                                    suggestHTML += '<div class="alias-name">' + (item.ani_jname.length > 25 ? item.ani_jname.substring(0, 25) + '...' : item.ani_jname) + '</div>';
                                    suggestHTML += '<div class="film-infor">';
                                    suggestHTML += '</div>';
                                    suggestHTML += '</div>';
                                    suggestHTML += '</div>';
                                });
                                document.getElementById('search-suggest').innerHTML = suggestHTML;
                            }
                        };
                        xmlhttp.open("GET", "<?= site_url('search/suggestions?keyword=') ?>" + str, true);
                        xmlhttp.send();
                    }, 500);
                }
            }
        </script>
        <div class="header-group">
            <div class="anw-group">
                <div class="zrg-list">
                    <div class="item"><a target="_blank" href="<?php echo $settings['Donation'][0]['value']; ?>" class="zr-social-button tl-btn"><i class="fas fa-donate"></i></a></div>
                    <div class="item"><a href="<?php echo $settings['Social'][0]['value']; ?>" target="_blank" class="zr-social-button dc-btn"><i class="fab fa-discord"></i></a></div>
                    <div class="item"><a href="<?php echo $settings['Social'][1]['value']; ?>" target="_blank" class="zr-social-button tw-btn"><i class="fab fa-twitter"></i></a></div>
                    <div class="item"><a href="<?php echo $settings['Social'][2]['value']; ?>" target="_blank" class="zr-social-button yt-btn"><i class="fab fa-youtube"></i></a></div>
                    <div class="item"><a href="<?php echo $settings['Social'][3]['value']; ?>" target="_blank" class="zr-social-button fb-btn"><i class="fab fa-facebook"></i></a></div>

                    <div class="item">
                        <a target="_blank" class="zr-social-button tl-btn" onclick="toggleDonationText()">
                            <i class="fab fa-bitcoin"></i>
                        </a>
                    </div>

                    <div id="donation-text" style="display: none;">
                        Tether(USDT)/Tron(TRC20): <br />
                        <?php echo $settings['Donation'][1]['value']; ?>
                    </div>

                    <script>
                        function toggleDonationText() {
                            var elem = document.getElementById('donation-text');
                            if (elem.style.display === 'none') {
                                elem.style.display = 'block';
                            } else {
                                elem.style.display = 'none';
                            }
                        }
                    </script>
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
        <?= $this->include('profile/user/loginconfig') ?>
        <div id="mobile_search" class=""><i class="fa fa-search"></i></div>
        <div class="clearfix"></div>
    </div>
</div>