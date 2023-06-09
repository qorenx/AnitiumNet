<div id="vote-info">
    <div class="block-rating ">
        <div class="rating-result">
            <div class="rr-mark float-left"><?= $epvotecount != 0 ? number_format($epvotescore / $epvotecount, 1) : 0 ?><strong><i class="fas fa-star text-warning mr-2"></i>
                </strong><small>( <?= ($epvotecount > 0) ? $epvotecount : 0 ?> voted )</small></div>
            <div class="rr-title float-right">Vote now</div>
            <div class="clearfix"></div>
        </div>
        <div class="description">What do you think about this episode?</div>
        <div class="button-rate">
            <button type="button" class="btn btn-emo rate-bad btn-vote" onclick="postVote(0)">😩<span class="ml-2">Boring</span></button>
            <button type="button" class="btn btn-emo rate-normal btn-vote" onclick="postVote(5)">😃<span class="ml-2">Great</span></button>
            <button type="button" class="btn btn-emo rate-good btn-vote" onclick="postVote(10)">🤩<span class="ml-2">Amazing</span></button>
            <script>
                function postVote(voteValue) {
                    fetch('/epvote/uservote' + voteValue + '?uid=<?= $_GET['uid']; ?>&eps=<?= $_GET['eps']; ?>', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'Accept': 'application/json'
                        },
                        body: JSON.stringify({
                            vote: voteValue
                        })
                    });
                }
            </script>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>