<section class="block_area block_area_home">
    <div class="block_area-header">
        <div class="float-left bah-heading mr-4">
            <h2 class="cat-heading">Latest Episode</h2>
        </div>
        <div class="float-right viewmore">
            <a class="btn" href="latest-episode">View more<i class="fas fa-angle-right ml-2"></i></a>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="tab-content">
        <div class="block_area-content block_area-list film_list film_list-grid">
            <div class="film_list-wrap">
                <?php foreach (array_slice($lastep, 0, 18) as $ani_data) : ?>
                    <div class="flw-item">
                        <div class="film-poster">
                            <div class="tick tick-rate"><?php $ratings = [1 => 'G', 2 => 'PG', 3 => 'PG-13', 4 => 'R', 5 => 'Rx'];
                                                        echo $ratings[$ani_data['ani_rate']] ?? ''; ?></div>
                            <div class="tick tick-eps"><?php echo $ani_data['ep_id_name'] ?>/<?php echo $ani_data['ani_ep'] ?></div>
                            <div class="tick ltr">
                            </div>
                            <div class="tick rtl">
                                <?php if (auth()->user()->raw_status ?? 1 == 1) : ?>
                                    <?php if (!empty($ani_data['RAW'])) : ?>
                                        <div class="tick-item tick-raw">
                                            <?php if ($ani_data['RAW'] == 1) { ?>
                                                <span style="font-size: 0.6rem;">RAW</span>
                                            <?php } ?>
                                        </div>
                                    <?php endif; ?>
                                <?php endif; ?>
                                <?php if (auth()->user()->sub_status ?? 1 == 1) : ?>
                                    <?php if (!empty($ani_data['SUB'])) : ?>
                                        <div class="tick-item tick-sub">
                                            <?php if ($ani_data['SUB'] == 1) { ?>
                                                <span style="font-size: 0.6rem;">SUB</span>
                                            <?php } ?>
                                        </div>
                                    <?php endif; ?>
                                <?php endif; ?>
                                <?php if (auth()->user()->dub_status ?? 1 == 1) : ?>
                                    <?php if (!empty($ani_data['DUB'])) : ?>
                                        <div class="tick-item tick-dub">
                                            <?php if ($ani_data['DUB'] == 1) { ?>
                                                <span style="font-size: 0.6rem;">DUB</span>
                                            <?php } ?>
                                        </div>
                                    <?php endif; ?>
                                <?php endif; ?>
                                <?php if (auth()->user()->turk_status ?? 1 == 1) : ?>
                                    <?php if (!empty($ani_data['TURK'])) : ?>
                                        <div class="tick-item tick-turk">
                                            <?php if ($ani_data['TURK'] == 1) { ?>
                                                <span style="font-size: 0.6rem;">TURK</span>
                                            <?php } ?>
                                        </div>
                                    <?php endif; ?>
                                <?php endif; ?>
                            </div>
                            <img data-src="<?php echo $ani_data['ani_poster'] ?>" class="film-poster-img ls-is-cached lazyloaded" alt="<?php echo $ani_data['ani_name'] ?>" src="<?php echo $ani_data['ani_poster'] ?>">
                            <a href="/watch?anime=<?php echo str_replace(' ', '-', $ani_data['ani_name']) ?>&uid=<?= $ani_data['uid'] ?>&eps=<?= $ani_data['ep_id_name'] ?>" class="film-poster-ahref" data-id="<?php echo $ani_data['uid'] ?>"><i class="fas fa-play"></i></a>
                        </div>
                        <div class="film-detail">
                            <h3 class="film-name"><a href="/anime/<?php echo $ani_data['uid'] ?>/<?php echo str_replace(' ', '-', $ani_data['ani_name']) ?>" class="dynamic-name"><?php echo $ani_data['ani_name'] ?></a></h3>
                            <div class="fd-infor">
                                <span class="fdi-item"><?php $aniType = [1 => 'TV', 2 => 'Movie', 3 => 'Ova', 4 => 'Ona', 5 => 'Special'];
                                                        echo $aniType[$ani_data['ani_type']] ?? ''; ?></span>
                                <span class="dot"></span>
                                <span class="fdi-item fdi-duration"><?php echo $ani_data['ani_time'] ?></span>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                <?php endforeach; ?>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</section>