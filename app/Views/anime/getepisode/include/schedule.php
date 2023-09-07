<?php if (empty($nextData->ep_id_name)) : ?>
    <?php if (!empty($schedulenext[0]['sc_days'])) : ?>
        <div class="schedule-alert">
            <div class="alert small">
                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span></button>
                <span class="icon-16 mr-1">🚀</span> Estimated the next episode <?= $schedulenext[0]['sc_ep']; ?> will come at
                <span><?= $schedulenext[0]['sc_days']; ?>-<?php echo date('m-Y'); ?> </span>
            </div>
        </div>
    <?php endif; ?>
<?php endif; ?>