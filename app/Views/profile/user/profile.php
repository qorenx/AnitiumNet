<?= $this->include('profile/extend/header') ?>

<body data-page="page_home">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('anime/extend/templates/head') ?>
        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page layout-profile">
            <div class="profile-header">
                <div class="profile-header-cover"></div>
                <div class="container">
                    <div class="ph-title">Hi, <?= auth()->user()->username ?></div>
                    <div class="ph-tabs">
                        <div class="bah-tabs">
                            <ul class="nav nav-tabs pre-tabs" style="display: flex;">
                                <li><a style="cursor: pointer;" class="nav-link active" onclick="window.location.href='/user/profile'"><i class="fas fa-user mr-2"></i>Profile</a></li>
                                <li><a style="cursor: pointer;" class="nav-link" onclick="window.location.href='/user/profile/status/favorite'"><i class="fas fa-heart mr-2"></i>Watch List</a></li>
                                <li><a style="cursor: pointer;" class="nav-link" onclick="window.location.href='/user/profile/settings'"><i class="fas fa-cog mr-2"></i>Settings</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="profile-content">
                <div class="container" style="max-width:100%!important;width:100%!important;">
                    <div class="profile-box profile-box-account makeup">
                        <h2 class="h2-heading mb-4"><i class="fas fa-user mr-3"></i>Profile</h2>
                        <div class="block_area-content">
                            <div class="show-profile-avatar text-center mb-3">
                                <div class="profile-avatar d-inline-block">
                                    <img id="preview-avatar" src="<?= auth()->user()->avatar ?>">
                                </div>
                            </div>
                            <form class="preform" method="post" id="profile-form">
                                <div class="row">
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="form-group">
                                            <label class="prelabel">Username</label>
                                            <input type="text" class="form-control" value="<?= auth()->user()->username ?>" readonly>
                                        </div>
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="form-group">
                                            <label class="prelabel">Joined</label>
                                            <input type="text" class="form-control" value="<?= auth()->user()->created_at ?>" readonly>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>



        <div id="mask-overlay"></div>
        <?= $this->include('anime/loadscript') ?>
    </div>
    </div>
</body>

</html>