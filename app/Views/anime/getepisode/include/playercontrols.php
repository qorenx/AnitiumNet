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
    <div class="pc-report" style="float: right;">
        <?php echo $this->include('anime/getepisode/include/reports'); ?>
    </div>

    <div class="pc-right">
        <div id="episode-prev-next"></div>
    </div>

    <div class="clearfix"></div>
</div>