<div id="servers-content">

    <?php if (auth()->user()->raw_status ?? 1 == 1) : ?>
        <?= $this->include('anime/animeepisode/server/raw') ?>
    <?php endif; ?>

    <?php if (auth()->user()->sub_status ?? 1 == 1) : ?>
        <?= $this->include('anime/animeepisode/server/sub') ?>
    <?php endif; ?>

    <?php if (auth()->user()->dub_status ?? 1 == 1) : ?>
        <?= $this->include('anime/animeepisode/server/dub') ?>
    <?php endif; ?>

    <?php if (auth()->user()->turk_status ?? 1 == 1) : ?>
        <?= $this->include('anime/animeepisode/server/turk') ?>
    <?php endif; ?>
</div>