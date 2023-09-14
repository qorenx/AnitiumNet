<div class="dr-fav" id="admin-edit-content">
    <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-radius btn-light">
        <i class="fa-solid fa-wrench"></i>Admin Control
    </a>
    <div class="dropdown-menu dropdown-menu-model dropdown-menu-normal" aria-labelledby="ssc-list">
        <a class="wl-item dropdown-item" href="<?= base_url('admin/anime/getanimeupdate?uid=') ?><?= $AnimeData['uid'] ?>">Anime Edit
        </a>
        <form method="post" action="<?= base_url('admin/anime/delete') ?>" onsubmit="return confirm('Delete?')">
            <input type="hidden" name="animedelete" value="<?= $AnimeData['id'] ?>">
            <button type="submit" class="wl-item dropdown-item">Anime Delete</button>
        </form>
    </div>
</div>