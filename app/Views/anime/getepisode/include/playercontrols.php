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
    <div class="pc-right">
        <?php echo $this->include('anime/getepisode/include/reports'); ?>
        <div class="pc-item pc-control block-prev">
            <?php if (!empty($allEpisodesData['Previous'])) : ?>
                <a class="btn btn-sm btn-prev" href="<?= base_url('watch') ?>?anime=<?= urlencode($_GET['anime']) ?>&uid=<?= $allEpisodesData['Current']->uid ?>&eps=<?= $allEpisodesData['Previous']->ep_id_name ?>" onclick="prevEpisode()"><i class="fas fa-backward mr-2"></i>Prev</a>
            <?php endif; ?>
        </div>
        <div class="pc-item pc-control block-next">
            <?php if (!empty($allEpisodesData['Next'])) : ?>
                <a class="btn btn-sm btn-next" href="<?= base_url('watch') ?>?anime=<?= urlencode($_GET['anime']) ?>&uid=<?= $allEpisodesData['Current']->uid ?>&eps=<?= $allEpisodesData['Next']->ep_id_name ?>" onclick="nextEpisode()"><i class="fas fa-forward ml-2"></i>Next</a>
            <?php endif; ?>
        </div>
    </div>
    <div class="clearfix"></div>
</div>