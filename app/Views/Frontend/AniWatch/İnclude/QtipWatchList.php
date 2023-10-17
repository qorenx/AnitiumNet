<div class="dr-tip-fav">
    <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn btn-block btn-fav">
        <i class="fas fa-plus"></i>
    </a>
    <div class="dropdown-menu dropdown-menu-model" aria-labelledby="ssc-list">
        <a href="#" onclick="postStatus(1,<?= $data['uid'] ?>)" class="wl-item dropdown-item anime-status">
            <i class="fas fa-heart"></i> Favorite
        </a>
        <a href="#" onclick="postStatus(2,<?= $data['uid'] ?>)" class="wl-item dropdown-item anime-status">
            <i class="fas fa-eye"></i> Watching
        </a>
        <a href="#" onclick="postStatus(3,<?= $data['uid'] ?>)" class="wl-item dropdown-item anime-status">
            <i class="fas fa-pause"></i> On Hold
        </a>
        <a href="#" onclick="postStatus(4,<?= $data['uid'] ?>)" class="wl-item dropdown-item anime-status">
            <i class="fas fa-clock"></i> Plan to Watch
        </a>
        <a href="#" onclick="postStatus(6,<?= $data['uid'] ?>)" class="wl-item dropdown-item anime-status">
            <i class="fas fa-check"></i> Completed
        </a>
    </div>
    <script type="text/javascript">
        function postStatus(status, uid) {
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