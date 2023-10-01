<div class="pc-item pc-control block-prev">
    <?php if (!empty($PrevNextData['Previous'])) : ?>
        <a class="btn btn-sm btn-prev" href="" onclick="getEmbedServer(event,<?= $embedUID; ?>,<?= $PrevNextData['Previous']->ep_id_name ?>)"><i class="fas fa-backward mr-2"></i>Prev</a>
    <?php endif; ?>
</div>
<div class="pc-item pc-control block-next">
    <?php if (!empty($PrevNextData['Next'])) : ?>
        <a class="btn btn-sm btn-next" href="" onclick="getEmbedServer(event,<?= $embedUID; ?>,<?= $PrevNextData['Next']->ep_id_name ?>)"><i class="fas fa-forward ml-2"></i>Next</a>
    <?php endif; ?>
</div>