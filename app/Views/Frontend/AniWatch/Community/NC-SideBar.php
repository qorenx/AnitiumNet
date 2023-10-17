<div id="sticky" class="nc-sidebar">
    <div class="page-title"><?= $Settings['Advanced'][0]['value'] ?> <span>COMMUNITY</span></div>
    <div class="nc-cate">
        <?php
        $tags = [
            ['url' => 'community/board', 'label' => '#All', 'color' => 'white', 'count' => null],
            ['url' => 'community/board/tag?type=1', 'label' => '#Updates', 'color' => 'red', 'count' => $updates],
            ['url' => 'community/board/tag?type=2', 'label' => '#General', 'color' => 'blue', 'count' => $general],
            ['url' => 'community/board/tag?type=3', 'label' => '#Suggestion', 'color' => 'green', 'count' => $suggestion],
            ['url' => 'community/board/tag?type=4', 'label' => '#Question', 'color' => 'yellow', 'count' => $question],
            ['url' => 'community/board/tag?type=5', 'label' => '#Discussion', 'color' => 'purple', 'count' => $discussion],
            ['url' => 'community/board/tag?type=6', 'label' => '#Feedback', 'color' => 'orange', 'count' => $feedback],
        ];

        foreach ($tags as $tag) : ?>
            <a class="item <?= $tag['count'] === null ? 'active' : '' ?>" href="<?= base_url($tag['url']) ?>">
                <div class="ztag"><span class="zt-<?= $tag['color'] ?>"><?= $tag['label'] ?></span></div>
                <?php if ($tag['count'] !== null) : ?>
                    <div class="number"><?= $tag['count'] ?> posts</div>
                <?php endif; ?>
            </a>
        <?php endforeach; ?>
    </div>
</div>