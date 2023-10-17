<div class="dr-fav" id="watch-list-content">
    <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-radius btn-light">
        <i class="fas fa-<?php switch ($UserAnimeStatus) {
                                case 1:
                                    echo "heart";
                                    break;
                                case 2:
                                    echo "eye";
                                    break;
                                case 3:
                                    echo "pause";
                                    break;
                                case 4:
                                    echo "clock";
                                    break;
                                case 5:
                                    echo "times";
                                    break;
                                case 6:
                                    echo "check";
                                    break;
                                default:
                                    echo  "plus";
                                    break;
                            } ?> mr-2"></i>
        <?php switch ($UserAnimeStatus) {
            case 1:
                echo "Favorite";
                break;
            case 2:
                echo "Watching";
                break;
            case 3:
                echo "On Hold";
                break;
            case 4:
                echo "Plan to Watch";
                break;
            case 5:
                echo "Dropped";
                break;
            case 6:
                echo "Completed";
                break;
            default:
                echo ($UserAnimeStatus === 0) ? "Add to List" : "Add to List";
        } ?>
    </a>
    <div class="dropdown-menu dropdown-menu-model" aria-labelledby="ssc-list">
        <a href="#" onclick="UserAnimeStatusUpdate(1,<?= $AnimeData['uid'] ?>)" class="wl-item dropdown-item anime-status">
            <i class="fas fa-heart"></i> Favorite
        </a>
        <a href="#" onclick="UserAnimeStatusUpdate(2,<?= $AnimeData['uid'] ?>)" class="wl-item dropdown-item anime-status">
            <i class="fas fa-eye"></i> Watching
        </a>
        <a href="#" onclick="UserAnimeStatusUpdate(3,<?= $AnimeData['uid'] ?>)" class="wl-item dropdown-item anime-status">
            <i class="fas fa-pause"></i> On Hold
        </a>
        <a href="#" onclick="UserAnimeStatusUpdate(4,<?= $AnimeData['uid'] ?>)" class="wl-item dropdown-item anime-status">
            <i class="fas fa-clock"></i> Plan to Watch
        </a>
        <a href="#" onclick="UserAnimeStatusUpdate(5,<?= $AnimeData['uid'] ?>)" class="wl-item dropdown-item anime-status">
            <i class="fas fa-times"></i> Dropped
        </a>
        <a href="#" onclick="UserAnimeStatusUpdate(6,<?= $AnimeData['uid'] ?>)" class="wl-item dropdown-item anime-status">
            <i class="fas fa-check"></i> Completed
        </a>
        <a href="#" onclick="UserAnimeStatusUpdate(7,<?= $AnimeData['uid'] ?>)" class="wl-item dropdown-item anime-status" style="color: red;">
            <i class="fas fa-trash"></i> Remove
        </a>
    </div>
    <script type="text/javascript">
        function UserAnimeStatusUpdate(status, uid) {
            var url = "<?php echo site_url('ajax/useranimestatus/') ?>" + uid + '/' + status;
            fetch(url, {
                    method: 'POST',
                })
                .then(response => response.text())
                .then(function(html) {
                    var parser = new DOMParser();
                    var htmlDoc = parser.parseFromString(html, 'text/html');

                    var newButton = htmlDoc.querySelector("#watch-list-content").innerHTML;
                    document.querySelector("#watch-list-content").innerHTML = newButton;
                })
                .catch(error => console.error('Error:', error));
        }
    </script>
</div>