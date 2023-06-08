<div id="servers-content">
<?php if(!empty($currentData->ep_raw)): ?>
        <?= $this->include('anime/extendpage/server/raw') ?>
    <?php endif; ?>
    <?php if(!empty($currentData->ep_sub)): ?>
        <?= $this->include('anime/extendpage/server/sub') ?>
    <?php endif; ?>
    <?php if(!empty($currentData->ep_dub)): ?>
        <?= $this->include('anime/extendpage/server/dub') ?>
    <?php endif; ?>
    <?php if(!empty($currentData->ep_turk)): ?>
        <?= $this->include('anime/extendpage/server/turk') ?>
    <?php endif; ?>
</div>