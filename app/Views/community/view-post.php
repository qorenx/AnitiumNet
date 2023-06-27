<?= $this->include('community/boardextend/boardheader') ?>
<div class="container">
    <div class="award-inner">
        <div class="wideview">
            <div class="connect-detail">
                <div class="ai-control">
                    <div class="aic-left">
                        <a href="/community/board"><i class="fas fa-angle-left mr-2"></i>Back</a>
                    </div>
                </div>
                <?= $this->include('community/boardextend/boardpostview') ?>
                <?= $this->include('community/boardextend/boardpostlist') ?>
            </div>
        </div>
    </div>
</div>
<?= $this->include('community/boardextend/boardfooter') ?>