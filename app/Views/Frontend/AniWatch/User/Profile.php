<?= $this->include('Frontend/AniWatch/İnclude/Header') ?>

<body data-page="page_home">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('Frontend/AniWatch/İnclude/Head') ?>
        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page layout-profile">
            <div class="profile-header">
                <div class="profile-header-cover" style="background-image: url(<?= auth()->user()->avatar ?>);"></div>
                <div class="container">
                    <div class="ph-title">Hi, <?= auth()->user()->username ?></div>
                    <div class="ph-tabs">
                        <div class="bah-tabs">
                            <ul class="nav nav-tabs pre-tabs">
                                <li class="nav-item"><a class="nav-link active" href="/user/profile"><i class="fas fa-user mr-2"></i>Profile</a></li>
                                <li class="nav-item"><a class="nav-link" href="/user/profile/status/favorite"><i class="fas fa-heart mr-2"></i>Watch List</a></li>
                                <li class="nav-item"><a class="nav-link" href="/user/profile/settings"><i class="fas fa-cog mr-2"></i>Settings</a></li>
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
                            <form class="preform" method="post" action="<?= base_url('post/userprofileupdate') ?>" enctype="multipart/form-data" id="profile-form">
                                <input type="hidden" name="id" value="<?= auth()->user()->id ?>">
                                <div class="show-profile-avatar text-center mb-3">
                                    <div class="profile-avatar d-inline-block">
                                        <img id="preview-avatar" src="<?= auth()->user()->avatar ?>">
                                        <div class="pa-edit" onclick="document.getElementById('avatar').click()"><i class="fas fa-pen"></i></div>
                                        <input type="file" id="avatar" value="<?= auth()->user()->avatar ?>" name="avatar" class="form-control-file" hidden>
                                    </div>
                                </div>
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
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="block">
                                            <a class="btn btn-sm btn-clear" data-toggle="collapse" href="#show-changepass"><i class="fas fa-key mr-2"></i>Change password</a>
                                        </div>
                                        <div id="show-changepass" class="collapse mt-3">
                                            <div class="form-group">
                                                <label class="prelabel" for="pro5-currentpass">Current Password</label>
                                                <input type="password" class="form-control" id="pro5-currentpass" name="current_password">
                                            </div>
                                            <div class="form-group">
                                                <label class="prelabel" for="pro5-pass">New Password</label>
                                                <input type="password" class="form-control" id="pro5-pass" name="new_password">
                                            </div>
                                            <div class="form-group">
                                                <label class="prelabel" for="pro5-confirm">Confirm New Password</label>
                                                <input type="password" class="form-control" id="pro5-confirm" name="confirm_new_password">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="form-group">
                                            <div class="mt-4"></div>
                                            <button class="btn btn-block btn-primary">Save</button>
                                            <div class="loading-relative" id="profile-loading" style="display:none">
                                                <div class="loading">
                                                    <div class="span1"></div>
                                                    <div class="span2"></div>
                                                    <div class="span3"></div>
                                                </div>
                                            </div>
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
        <?= $this->include('Frontend/AniWatch/İnclude/Footer') ?>
        <div id="mask-overlay"></div>
        <?= $this->include('Frontend/AniWatch/İnclude/LoadScript') ?>
    </div>
</body>