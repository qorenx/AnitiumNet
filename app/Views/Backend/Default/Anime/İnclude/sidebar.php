<div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
    <div class="brand-logo">
        <a href="<?= base_url('/admin'); ?>">
            <img src="<?php echo $getAdminSettings['Advanced'][3]['value']; ?>" class="logo-icon" alt="logo icon">
            <h5 class="logo-text"><?php echo $getAdminSettings['Advanced'][0]['value']; ?></h5>
        </a>
    </div>
    <ul class="sidebar-menu do-nicescrol">
        <li>
            <a href="<?php echo base_url(); ?>admin">
                <i class="zmdi zmdi-view-dashboard"></i><span>Dashboard</span>
            </a>
        </li>
        <li class="sidebar-header">Anime Controller System</li>
        <?php
        $menuItems = array(
            array('getanime/$uid', 'fas fa-film', 'Anime Adding'),
            array('getanimeupdate/$uid', 'fas fa-film', 'Anime Update'),
        );
        ?>
        <li class="nav-item">
            <a data-toggle="collapse" href="#anime" role="button" aria-expanded="false" aria-controls="anime">
                <h6><i class="fas fa-book"></i>Anime</h6>
            </a>
            <div class="collapse" id="anime">
                <ul class="nav flex-column pl-3">
                    <?php foreach ($menuItems as $item) : ?>
                        <?php if ($item[0] === 'getanime/$uid') : ?>
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="modal" data-target="#getanime-modal">
                                    <i class="<?= $item[1] ?>"></i> <?= ucfirst(str_replace('-', ' ', $item[2])); ?>
                                </a>
                            </li>
                        <?php elseif ($item[0] === 'getanimeupdate/$uid') : ?>
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="modal" data-target="#getanimeupdate-modal">
                                    <i class="<?= $item[1] ?>"></i> <?= ucfirst(str_replace('-', ' ', $item[2])); ?>
                                </a>
                            </li>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </ul>
            </div>
        </li>

        <?php
        $episodes = [
            'adding' => ['fas fa-video', 'Episode Adding'],
            'embed' => ['fas fa-file-video', 'Embed Adding'],
        ];
        ?>

        <li class="nav-item">
            <a data-toggle="collapse" href="#episode" role="button" aria-expanded="false" aria-controls="episode">
                <h6><i class="fas fa-tv"></i>Episode</h6>
            </a>
            <div class="collapse" id="episode">
                <ul class="nav flex-column pl-3">
                    <?php foreach ($episodes as $uri => $details) :
                        $icon = $details[0];
                        $name = ucwords(str_replace('-', ' ', $details[1]));
                    ?>
                        <li class="nav-item">
                            <a class="nav-link" href="<?= base_url('/admin/episode/' . $uri); ?>">
                                <i class="<?= $icon ?>"></i> <?= $name; ?>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </li>

        <li class="sidebar-header">Episode-Community Report System</li>

        <?php
        $reportsystem = [
            ['episode', 'fas fa-file-alt', 'Episode'],
            ['episode/main', 'fas fa-file-alt', 'Episode Main'],
            ['episode/repy', 'fas fa-file-alt', 'Episode Repy'],
            ['board', 'fas fa-file-alt', 'Board'],
            ['board/main', 'fas fa-file-alt', 'Board Main'],
            ['board/repy', 'fas fa-file-alt', 'Board Repy'],
        ];
        ?>

        <li class="nav-item">
            <a data-toggle="collapse" href="#reportsystem" role="button" aria-expanded="false" aria-controls="reportsystem">
                <h6><i class="fas fa-file-alt"></i>Report</h6>
            </a>
            <div class="collapse" id="reportsystem">
                <ul class="nav flex-column pl-3">
                    <?php foreach ($reportsystem as $link) : ?>
                        <li class="nav-item">
                            <a class="nav-link" href="<?= base_url('/admin/report/' . $link[0]); ?>">
                                <i class="<?= $link[1] ?>"></i> <?= ucwords(str_replace('-', ' ', $link[2])); ?>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </li>

        <li class="sidebar-header">Slider/Schedule</li>
        <?php
        $slidersschedule = [
            ['schedule', 'fas fa-calendar-check', 'Schedule'],
            ['slider', 'fas fa-image', 'Sliders'],
        ];
        ?>

        <li class="nav-item">
            <a data-toggle="collapse" href="#slidersschedule" role="button" aria-expanded="false" aria-controls="slidersschedule">
                <h6><i class="fas fa-cog"></i>Slider/Schedule</h6>
            </a>
            <div class="collapse" id="slidersschedule">
                <ul class="nav flex-column pl-3">
                    <?php foreach ($slidersschedule as $link) : ?>
                        <li class="nav-item">
                            <a class="nav-link" href="<?= base_url('/admin/anime/' . $link[0]); ?>">
                                <i class="<?= $link[1] ?>"></i> <?= ucwords(str_replace('-', ' ', $link[2])); ?>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </li>

        <li class="sidebar-header">Advanced Settings</li>

        <?php
        $anisettings = [
            ['advanced', 'fas fa-cogs', 'Advanced'],
            ['images', 'fas fa-image', 'Image'],
            ['comment', 'fas fa-comment', 'Comment'],
            ['social', 'fas fa-share-alt', 'Social'],
            ['donation', 'fas fa-hand-holding-usd', 'Donation'],
            ['licence', 'fas fa-id-card', 'Licence'],
        ];
        ?>

        <li class="nav-item">
            <a data-toggle="collapse" href="#anisettings" role="button" aria-expanded="false" aria-controls="anisettings">
                <h6><i class="fas fa-cog"></i>Settings</h6>
            </a>
            <div class="collapse" id="anisettings">
                <ul class="nav flex-column pl-3">
                    <?php foreach ($anisettings as $link) : ?>
                        <li class="nav-item">
                            <a class="nav-link" href="<?= base_url('/admin/settings/' . $link[0]); ?>">
                                <i class="<?= $link[1] ?>"></i> <?= ucwords(str_replace('-', ' ', $link[2])); ?>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </li>

    </ul>

</div>
<?= $this->include('Backend/Default/Anime/İnclude/LoadModal') ?>