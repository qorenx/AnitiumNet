<div id="servers-content">
    <?php if (auth()->user()->raw_status ?? 1 == 1) : ?>
        <?= $this->include('anime/getepisode/watch/type/raw') ?>
    <?php endif; ?>

    <?php if (auth()->user()->sub_status ?? 1 == 1) : ?>
        <?= $this->include('anime/getepisode/watch/type/sub') ?>
    <?php endif; ?>

    <?php if (auth()->user()->dub_status ?? 1 == 1) : ?>
        <?= $this->include('anime/getepisode/watch/type/dub') ?>
    <?php endif; ?>

    <?php if (auth()->user()->turk_status ?? 1 == 1) : ?>
        <?= $this->include('anime/getepisode/watch/type/turk') ?>
    <?php endif; ?>
</div>