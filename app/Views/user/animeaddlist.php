<div class="dr-fav" id="watch-list-content">
    <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-radius btn-light">
        <i class="fas fa-plus mr-2"></i>
        <?php
        switch ($userstatus) {
            case 1:
                echo "Watching";
                break;
            case 2:
                echo "On Hold";
                break;
            case 3:
                echo "Plan to Watch";
                break;
            case 4:
                echo "Dropped";
                break;
            case 5:
                echo "Completed";
                break;
            default:
                echo ($userstatus === 0) ? "Add to List" : "Add to List";
        }
        ?>
    </a>
    <div class="dropdown-menu dropdown-menu-model dropdown-menu-normal" aria-labelledby="ssc-list">
        <a href="#" onclick="setStatus(1,<?= $animetv['uid'] ?>)" class="wl-item dropdown-item anime-status">Watching</a>
        <a href="#" onclick="setStatus(2,<?= $animetv['uid'] ?>)" class="wl-item dropdown-item anime-status">On Hold</a>
        <a href="#" onclick="setStatus(3,<?= $animetv['uid'] ?>)" class="wl-item dropdown-item anime-status">Plan to Watch</a>
        <a href="#" onclick="setStatus(4,<?= $animetv['uid'] ?>)" class="wl-item dropdown-item anime-status">Dropped</a>
        <a href="#" onclick="setStatus(5,<?= $animetv['uid'] ?>)" class="wl-item dropdown-item anime-status">Completed</a>
    </div>
    <script type="text/javascript">
        function setStatus(status, uid) {
            var url = "<?php echo site_url('status/' . auth()->user()->id . '/') ?>" + uid + '/' + status;
            window.location.href = url;
        }
    </script>
</div>