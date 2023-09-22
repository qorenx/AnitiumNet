<div id="servers-content">
    <div class="ps_-status">
        <div class="content">
            <div class="server-notice">
                <strong>You are watching <b>Episode <?= $episodesData[0]['ep_id_name'] ?></b></strong>
                If current server doesn't work please try other servers beside.
            </div>
        </div>
    </div>
    <div id="embed-list"></div>

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
