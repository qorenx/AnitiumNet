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
                                <li class="nav-item"><a class="nav-link" href="/user/profile"><i class="fas fa-user mr-2"></i>Profile</a></li>
                                <li class="nav-item"><a class="nav-link" href="/user/profile/status/favorite"><i class="fas fa-heart mr-2"></i>Watch List</a></li>
                                <li class="nav-item"><a class="nav-link active" href="/user/profile/settings"><i class="fas fa-cog mr-2"></i>Settings</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>


            <div class="profile-content">
                <div class="container">
                    <div class="profile-box profile-box-account profile-settings" style="max-width: 1100px;">
                        <h2 class="h2-heading mb-4"><i class="fas fa-cog mr-3"></i>Settings</h2>
                        <div class="block_area-content">
                            <form class="preform pr-settings" action="<?= base_url('post/usersettingsupdate') ?>" method="post" id="settings-form">
                                <input type="hidden" name="id" value="<?= auth()->user()->id ?>">
                                <div class="row mb-4">
                                    <div class="col-4">
                                        <label for="schedule_status">Username</label>
                                    </div>
                                    <div class="col-xl-3 col-md-6 col-sm-6 col-6">
                                        <input type="text" id="username" name="username" class="form-control" value="<?= auth()->user()->username ?>">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="row mb-4">
                                    <div class="col-4">
                                        <label for="schedule_status">Schedule</label>
                                    </div>
                                    <div class="col-xl-3 col-md-6 col-sm-6 col-6">
                                        <select id="schedule_status" name="schedule_status" onchange="toggleValue(this)">
                                            <option value="0" <?= (auth()->user()->schedule_status == 0) ? 'selected' : '' ?>>Inactive</option>
                                            <option value="1" <?= (auth()->user()->schedule_status == 1) ? 'selected' : '' ?>>Active</option>
                                        </select>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>

                                <div class="row mb-4">
                                    <div class="col-4">
                                        <label for="watchlist_status">WatchList</label>
                                    </div>
                                    <div class="col-xl-3 col-md-6 col-sm-6 col-6">
                                        <select id="watchlist_status" name="watchlist_status" onchange="toggleValue(this)">
                                            <option value="0" <?= (auth()->user()->watchlist_status == 0) ? 'selected' : '' ?>>Inactive</option>
                                            <option value="1" <?= (auth()->user()->watchlist_status == 1) ? 'selected' : '' ?>>Active</option>
                                        </select>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>

                                <?php foreach (['raw', 'sub', 'dub', 'turk'] as $status) : ?>
                                    <div class="row mb-4">
                                        <div class="col-4">
                                            <label for="<?= $status ?>_status" class="me-2"><?= ucfirst($status) ?></label>
                                        </div>
                                        <div class="col-xl-3 col-md-6 col-sm-6 col-6">
                                            <select id="<?= $status ?>_status" name="<?= $status ?>_status" onchange="toggleValue(this)">
                                                <option value="0" <?= (auth()->user()->{$status . '_status'} == 0) ? 'selected' : '' ?>>Inactive</option>
                                                <option value="1" <?= (auth()->user()->{$status . '_status'} == 1) ? 'selected' : '' ?>>Active</option>
                                            </select>
                                        </div>
                                    </div>
                                <?php endforeach; ?>

                                <div class="row mt-5">
                                    <div class="col-xl-12 col-md-12 col-sm-12">
                                        <button class="btn btn-block btn-primary">Save Settings</button>
                                        <div class="loading-relative" id="settings-loading" style="display:none">
                                            <div class="loading">
                                                <div class="span1"></div>
                                                <div class="span2"></div>
                                                <div class="span3"></div>
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