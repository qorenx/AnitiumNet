<div id="servers-content">

    <?php if (auth()->user()->raw_status ?? 1 == 1) : ?>
        <?= $this->include('anime/extendpage/server/raw') ?>
    <?php endif; ?>

    <?php if (auth()->user()->sub_status ?? 1 == 1) : ?>
        <?= $this->include('anime/extendpage/server/sub') ?>
    <?php endif; ?>

    <?php if (auth()->user()->dub_status ?? 1 == 1) : ?>
        <?= $this->include('anime/extendpage/server/dub') ?>
    <?php endif; ?>

    <?php if (auth()->user()->turk_status ?? 1 == 1) : ?>
        <?= $this->include('anime/extendpage/server/turk') ?>
    <?php endif; ?>
</div>