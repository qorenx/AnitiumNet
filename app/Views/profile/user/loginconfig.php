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
                    "Watching" => "/user/profile/status/favorite",
                    "Settings" => "/user/profile/settings",
                    "Themes" => "javascript:void(0);", 
                ];
                ?>
                <div class="grid-menu">
                    <?php foreach ($urls as $name => $url) { ?>
                        <a class="dropdown-item <?= $name == 'Themes' ? 'theme-selector' : '' ?>" href="<?= $url ?>"
                            <?php
                            if ($name == 'Themes') {
                                echo 'onclick="openThemeSelection()"';
                            }
                            ?>>
                            <i class="<?php
                                switch ($name) {
                                    case 'Profile':
                                        echo 'fas fa-user mr-2';
                                        break;
                                    case 'Watching':
                                        echo 'fas fa-eye';
                                        break;
                                    case 'Settings':
                                        echo 'fa-solid fa-cog';
                                        break;
                                    case 'Themes': 
                                        echo 'fas fa-paint-brush';
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
<?php 
    if(isset($_COOKIE['bg-user'])) {
        echo $_COOKIE['bg-user']; 
    } 
?>
<div style="display: none;" id="theme-selection-div">
    <button onclick="selectTheme('red')">Theme 1</button>
    <button onclick="selectTheme('blue')">Theme 2</button>
    <button onclick="selectTheme('orange')">Theme 3</button>
    <button onclick="selectTheme('white')">Theme 4</button>
    <button onclick="selectTheme('yellow')">Theme 5</button>
</div>

<script>
    function openThemeSelection() {
        document.getElementById('theme-selection-div').style.display = 'block';
    }
    
    function selectTheme(theme) {
        var expires = new Date();
        expires.setHours(expires.getHours() + 1);
        document.cookie = "bg-user=" + theme + ";expires=" + expires.toUTCString();
        document.getElementById('theme-selection-div').style.display = 'none';
    }
</script>




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