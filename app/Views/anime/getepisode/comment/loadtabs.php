<section class="block_area block_area-comment">
    <div class="block_area-header block_area-header-tabs">
        <div class="float-left bah-heading mr-4">
            <h2 class="cat-heading">Comments</h2>
        </div>
        <div class="float-left bah-setting">
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="tab-container">
        <ul class="nav nav-tabs">
            <li class="nav-item" data-tab="tab1">
                <a class="nav-link active" href="#"><?php echo $settings['Advanced'][0]['value']; ?></a>
            </li>
            <li class="nav-item" data-tab="tab2">
                <a class="nav-link" href="#">Disqus</a>
            </li>
        </ul>
        <div class="tab-content chat" id="tab1">
            <?= $this->include('anime/getepisode/comment/comment') ?>
        </div>
        <div class="tab-content chat" id="tab2" style="display:none;">
            <?= $this->include('anime/getepisode/comment/disqus') ?>
        </div>
    </div>
</section>