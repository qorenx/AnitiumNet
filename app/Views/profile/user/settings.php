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
            <div style="display: flex; justify-content: center; align-items: center;">
                <div class="card text-dark">
                    <div class="card-body">
                        <form method="post" id="profile-form" action="<?= base_url('/profil/update') ?>" class="needs-validation" novalidate>
                            <input type="hidden" name="id" value="<?= auth()->user()->id ?>" class="form-control" readonly>
                            <hr>
                            <div class="form-group">
                                <label for="avatar">Avatar</label>
                                <div class="d-flex align-items-center mb-2">
                                    <div class="d-flex flex-column align-items-start">
                                        <img src="<?= auth()->user()->avatar ?>" alt="avatar" class="img-thumbnail mr-3" style="width:400px; height:150px; object-fit: cover;">
                                        <select id="avatar" name="avatar" class="form-control mt-2">
                                            <?php for ($i = 1; $i < 9; $i++) : ?>
                                                <option value="/files/images/avatar<?= $i ?>.gif" <?php if (auth()->user()->avatar == '/files/images/avatar' . $i . '.gif') echo 'selected'; ?>>Avatar <?= $i ?></option>
                                            <?php endfor; ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div id="scheduleGroup" class="form-group">
                                <label>Schedule</label>
                                <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" id="schedule_status" name="schedule_status" <?= (auth()->user()->schedule_status == 1) ? 'checked' : '' ?> onchange="toggleValue(this)">
                                    <input type="hidden" id="schedule_status_hidden" name="schedule_status" value="<?= auth()->user()->schedule_status ?>">
                                    <label for="schedule_status" class="form-check-label">Schedule</label>
                                </div>
                            </div>
                            <hr>
                            <div id="statusGroup" class="form-group">
                                <label>Statuses</label>
                                <div style="display: flex; align-items: center;">
                                    <?php foreach (['raw', 'sub', 'dub', 'turk'] as $index => $status) : ?>
                                        <div class="form-check" style="display: flex; align-items: center; margin-right: 10px;">
                                            <input class="form-check-input" type="checkbox" id="<?= $status ?>_status" name="<?= $status ?>_status" <?= (auth()->user()->{$status . '_status'} == 1) ? 'checked' : '' ?> onchange="toggleValue(this)">
                                            <input type="hidden" id="<?= $status ?>_status_hidden" name="<?= $status ?>_status" value="<?= auth()->user()->{$status . '_status'} ?>">
                                            <label class="form-check-label" for="<?= $status ?>_status"><?= ucfirst($status) ?></label>
                                        </div>
                                    <?php
                                        if ($index !== count(['raw', 'sub', 'dub', 'turk']) - 1) {
                                            echo '|';
                                        }
                                    endforeach; ?>
                                </div>
                            </div>
                            <hr>
                            <button type="submit" class="btn btn-dark">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        </main>
        <script>
            function toggleValue(checkbox) {
                var hiddenInput = document.querySelector(`input[id=${checkbox.id}_hidden]`);
                hiddenInput.value = checkbox.checked ? 1 : 0;
            }
        </script>
        <?= $this->include('anime/loadscript') ?>
</body>

</html>