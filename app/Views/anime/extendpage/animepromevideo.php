<button class="btn btn-primary" style="margin: 10px auto 0; display: grid; place-items:center; margin-bottom: 10px;" data-toggle="modal" data-target="#promo-video-modal">
    Promo Video
</button>
<div class="modal fade" id="promo-video-modal" tabindex="-1" role="dialog" aria-labelledby="promo-video-modal-label" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content bg-dark">
            <div class="modal-body bg-dark">
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe id="promo-video" src="<?= $webdata['webconvert'] . htmlspecialchars($animetv['ani_pv']) ?>" class="embed-responsive-item" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
</div>