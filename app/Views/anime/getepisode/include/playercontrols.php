<div class="player-controls">
    <div class="pc-item pc-resize">
        <a href="javascript:;" id="media-resize" class="btn btn-sm"><i class="fas fa-expand mr-1"></i>Expand</a>
    </div>
    <div class="pc-item pc-toggle pc-light">
        <div id="turn-off-light" class="toggle-basic">
            <span class="tb-name"><i class="fas fa-lightbulb mr-2"></i>Light</span>
            <span class="tb-result"></span>
        </div>
    </div>
    <?php if (!empty($episodedownload)) : ?>
        <?= $this->include('anime/getepisode/watch/type/download') ?>
    <?php endif; ?>
    <div class="pc-right">
        <?php echo $this->include('anime/getepisode/include/reports'); ?>
        <div class="pc-item pc-control block-prev">
            <?php if (!empty($previousData)) : ?>
                <a class="btn btn-sm btn-prev" href="<?= base_url('watch') ?>?anime=<?= urlencode($animeData['ani_name']) ?>&uid=<?= $episodesData[0]['uid'] ?>&eps=<?= $previousData->ep_id_name ?>" onclick="prevEpisode()"><i class="fas fa-backward mr-2"></i>Prev</a>
            <?php endif; ?>
        </div>
        <div class="pc-item pc-control block-next">
            <?php if (!empty($nextData)) : ?>
                <a class="btn btn-sm btn-next" href="<?= base_url('watch') ?>?anime=<?= urlencode($animeData['ani_name']) ?>&uid=<?= $episodesData[0]['uid'] ?>&eps=<?= $nextData->ep_id_name ?>" onclick="nextEpisode()">Next<i class="fas fa-forward ml-2"></i></a>
            <?php endif; ?>
        </div>
    </div>
    <div class="clearfix"></div>
</div>