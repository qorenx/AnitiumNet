<div class="watch-player">
    <div class="player-frame">
        <div id="iframe-embed">
            <div class="loading-relative loading-box" id="embed-loading">
                <div class="loading">
                    <div class="span1"></div>
                    <div class="span2"></div>
                    <div class="span3"></div>
                </div>
            </div>
        </div>
    </div>
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
</div>