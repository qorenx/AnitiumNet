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
            <img src="https://anitium.net/files/images/logo.png" width="100%" height="auto" alt="">
            <div class="clearfix"></div>
        </a>

        <div id="search">
            <div class="search-content">
                <form action="<?= site_url('search') ?>" autocomplete="off">
                    <a href="<?= site_url('search') ?>" class="filter-icon">Filter</a>
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
            <div class="zoro-group">
                <div class="zrg-title"><span class="top">Join now</span><span class="bottom">
                        Groups
                    </span></div>
                <div class="zrg-list">
                    <div class="item"><a target="_blank" href="<?php echo $webdata['webdonation']; ?>" class="zr-social-button tl-btn"><i class="fas fa-donate"></i></a></div>
                    <div class="item"><a href="<?php echo $webdata['webdiscord']; ?>" target="_blank" class="zr-social-button dc-btn"><i class="fab fa-discord"></i></a></div>
                    <div class="item"><a href="<?php echo $webdata['webtwitter']; ?>" target="_blank" class="zr-social-button tw-btn"><i class="fab fa-twitter"></i></a></div>
                    <div class="item">
                        <a target="_blank" class="zr-social-button tl-btn" onclick="toggleDonationText()">
                            <i class="fab fa-bitcoin"></i>
                        </a>
                    </div>

                    <div id="donation-text" style="display: none;">
                        Tether(USDT)/Tron(TRC20): <br />
                        <?php echo $webdata['webdonation2']; ?>
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
        <?php if (auth()->user()) : ?>
            <div id="header_right">
                <div id="user-slot">
                    <div class="header_right-user logged">
                        <div class="dropdown">
                            <div class="btn-user-avatar" data-toggle="dropdown" aria-expanded="false" aria-controls="user_menu">
                                <div class="profile-avatar">
                                    <img src="<?= auth()->user()->avatar ?>">
                                </div>
                            </div>
                            <?php $username = auth()->user()->username; ?>
                            <div id="user_menu" class="dropdown-menu dropdown-menu-right">
                                <div class="dropdown-item dropdown-item-user">
                                    <div class="user-detail">
                                        <div class="name"><?= $username ?></div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <?php $urls = [
                                    "Profile" => "/user/profile",
                                    "Watching Status" => "/user/profile/status/watching",
                                    "Settings" => "/user/profile/settings"
                                ];
                                ?>
                                <div class="grid-menu">
                                    <?php foreach ($urls as $name => $url) { ?>
                                        <a class="dropdown-item" href="<?= $url ?>"><i class="<?php
                                                                                                switch ($name) {
                                                                                                    case 'Profile':
                                                                                                        echo 'fas fa-user mr-2';
                                                                                                        break;
                                                                                                    case 'Watching Status':
                                                                                                        echo 'fas fa-eye';
                                                                                                        break;
                                                                                                    case 'Settings':
                                                                                                        echo 'fa-solid fa-cog';
                                                                                                        break;
                                                                                                }
                                                                                                ?> mr-2"></i><?= $name ?></a>
                                    <?php } ?>
                                    <div class="clearfix"></div>
                                </div>
                                <a class="dropdown-item text-right text-white" href="<?= base_url('users/logout') ?>">Logout<i class="fas fa-arrow-right ml-2 mr-1"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php else : ?>
            <div id="header_right">
                <div id="user-slot">
                    <div class="header_right-user logged">
                        <div class="dropdown">
                            <div data-toggle="dropdown" class="header_right-user">
                                <a class="btn-user btn btn-sm btn-primary btn-login"><i class="fa-solid fa-user-astronaut fa-beat"></i></a>
                            </div>
                            <div id="user_menu" class="dropdown-menu dropdown-menu-right">
                                <div class="dropdown-item dropdown-item-user">
                                    <div class="clearfix"></div>
                                </div>
                                <div class="grid-menu">
                                    <div class="grid-menu">
                                        <form action="<?= url_to('login') ?>" method="post">
                                            <?= csrf_field() ?>
                                            <div class="mb-2">
                                                <input type="email" class="form-control" name="email" inputmode="email" autocomplete="email" placeholder="<?= lang('Auth.email') ?>" value="<?= old('email') ?>" required />
                                            </div>
                                            <div class="mb-2">
                                                <input type="password" class="form-control" name="password" inputmode="text" autocomplete="current-password" placeholder="<?= lang('Auth.password') ?>" required />
                                            </div>
                                            <?php if (setting('Auth.sessionConfig')['allowRemembering']) : ?>
                                                <div class="form-check">
                                                    <label class="form-check-label">
                                                        <input type="checkbox" name="remember" class="form-check-input" <?php if (old('remember')) : ?> checked<?php endif ?>>
                                                        <?= lang('Auth.rememberMe') ?>
                                                    </label>
                                                </div>
                                            <?php endif; ?>
                                            <div class="d-grid col-12 col-md-8 mx-auto m-3">
                                                <button type="submit" class="btn btn-primary btn-block"><?= lang('Auth.login') ?></button>
                                            </div>
                                            <?php if (setting('Auth.allowRegistration')) : ?>
                                                <p class="text-center"><?= lang('Auth.needAccount') ?> <a href="../user/register"><?= lang('Auth.register') ?></a></p>
                                            <?php endif ?>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php endif ?>
        <div id="mobile_search" class=""><i class="fa fa-search"></i></div>
        <div class="clearfix"></div>
    </div>
</div>