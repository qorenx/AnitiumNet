<div class="modal fade" id="getanime-modal" tabindex="-1" role="dialog" aria-labelledby="getanime-modalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <form action="<?= base_url('/admin/anime/getanime/'); ?>" method="get">
                <div class="modal-header">
                    <h5 class="modal-title" id="getanime-modalLabel" style="color:black">Enter Anime ID</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group" style="background-color: #0709644a;">
                        <input type="text" name="uid" class="form-control" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Get Anime</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="getanimeupdate-modal" tabindex="-1" role="dialog" aria-labelledby="getanimeupdate-modalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <form action="<?= base_url('/admin/anime/getanimeupdate/'); ?>" method="get">
                <div class="modal-header">
                    <h5 class="modal-title" id="getanimeupdate-modalLabel" style="color:black">Enter Anime ID</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group" style="background-color: #0709644a;">
                        <input type="text" name="uid" class="form-control" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Get Anime Update</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="getallepisode-modal" tabindex="-1" role="dialog" aria-labelledby="getallepisode-modalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <form action="<?= base_url('/admin/episode/getepisode/'); ?>" method="get">
                <div class="modal-header">
                    <h5 class="modal-title" id="getallepisode-modalLabel" style="color:black">Get All Episode</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group" style="background-color: #0709644a;">
                        <h5 class="modal-title" id="getallepisode-modalLabel" style="color:black">MyAnimeList Anime ID</h5>
                        <input type="text" name="uid" class="form-control" required>
                        <h5 class="modal-title" id="getallepisode-modalLabel" style="color:black">Enter Page ID(1-100=1, 101-200=2, etc)</h5>
                        <input type="text" name="page" class="form-control" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Get All Episode</button>
                </div>
            </form>
        </div>
    </div>
</div>