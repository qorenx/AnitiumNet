<div class="ib-li ib-like">
    <a style="color:white;" onclick="addRepyLike(<?= $epvotecount['post_id'] ?>)" class="btn cm-btn-vote">
        <i class="far fa-thumbs-up mr-1"></i><span class="value"><?= $epvotecount['total_post_rep'] ?>
        </span>
    </a>
</div>
<div class="ib-li ib-dislike">
    <a style="color:white;" onclick="addRepyDislike(<?= $epvotecount['post_id'] ?>)" class="btn cm-btn-vote">
        <i class="far fa-thumbs-down mr-1"></i><span class="value"><?= $epvotecount['total_post_disrep'] ?>
        </span>
    </a>
</div>