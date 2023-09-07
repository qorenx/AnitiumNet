<div class="float-left">
    <a class="btn btn-upvote p-btn-vote" onclick="addMainPostLike(<?= $epvotecount['post_id'] ?>)">
        <i class="far fa-thumbs-up mr-2"></i>
        <span class="value"><?= $epvotecount['total_post_rep'] ?></span>
    </a>
    <a class="btn btn-downvote p-btn-vote" onclick="addMainPostDislike(<?= $epvotecount['post_id'] ?>)">
        <i class="far fa-thumbs-down mr-2"></i>
        <span class="value"><?= $epvotecount['total_post_disrep'] ?></span>
    </a>
</div>