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
                <?php foreach (array_slice($lastep, 0, 12) as $ani_data) : ?>
                    <div class="flw-item">
                        <div class="film-poster">
                            <div class="tick tick-episode"><?php echo $ani_data['ep_id_name'] ?>/<?php echo $ani_data['ani_ep'] ?></div>
                            <div class="tick tick-type"><?php
                                                        $aniType = [
                                                            1 => 'TV',
                                                            2 => 'Movie',
                                                            3 => 'Ova',
                                                            4 => 'Ona',
                                                            5 => 'Special'
                                                        ];

                                                        echo $aniType[$ani_data['ani_type']] ?? '';
                                                        ?></div>
                            <div class="tick ltr">
                                <div class="tick-item"><?php
                                                        $ratings = [
                                                            1 => 'G',
                                                            2 => 'PG',
                                                            3 => 'PG-13',
                                                            4 => 'R',
                                                            5 => 'Rx'
                                                        ];

                                                        echo $ratings[$ani_data['ani_rate']] ?? '';
                                                        ?></div>
                            </div>
                            <div class="tick rtl">
                                <?php if (auth()->user()->raw_status ?? 1 == 1) : ?>
                                    <?php if (!empty($ani_data['ep_raw'])) : ?>
                                        <div class="tick-item tick-raw">
                                            <?= '<span style="font-size: 0.4rem;">' . $ani_data['ep_raw'] . '</span>' ?>
                                        </div>
                                    <?php endif; ?>
                                <?php endif; ?>
                                <?php if (auth()->user()->sub_status ?? 1 == 1) : ?>
                                    <?php if (!empty($ani_data['ep_sub'])) : ?>
                                        <div class="tick-item tick-sub">
                                            <?= '<span style="font-size: 0.4rem;">' . $ani_data['ep_sub'] . '</span>' ?>
                                        </div>
                                    <?php endif; ?>
                                <?php endif; ?>
                                <?php if (auth()->user()->dub_status ?? 1 == 1) : ?>
                                    <?php if (!empty($ani_data['ep_dub'])) : ?>
                                        <div class="tick-item tick-dub">
                                            <?= '<span style="font-size: 0.4rem;">' . $ani_data['ep_dub'] . '</span>' ?>
                                        </div>
                                    <?php endif; ?>
                                <?php endif; ?>
                                <?php if (auth()->user()->turk_status ?? 1 == 1) : ?>
                                    <?php if (!empty($ani_data['ep_turk'])) : ?>
                                        <div class="tick-item tick-turk">
                                            <?= '<span style="font-size: 0.4rem;">' . $ani_data['ep_turk'] . '</span>' ?>
                                        </div>
                                    <?php endif; ?>
                                <?php endif; ?>
                            </div>
                            <img class="film-poster-img lazyload" src="<?php echo $ani_data['ani_poster'] ?>" alt="">
                            <a class="film-poster-ahref" href="/watch/<?php echo $ani_data['uid'] ?>/<?php echo preg_replace('/[\s\/]+/', '-', $ani_data['ani_name']) ?>/<?php echo $ani_data['ep_id_name'] ?>" title="<?php echo $ani_data['ani_name'] ?>"><i class="fas fa-play"></i></a>
                        </div>
                        <div class="film-detail">
                            <h3 class="film-name">
                                <a href="/anime/<?php echo $ani_data['uid'] ?>/<?php echo str_replace(' ', '-', $ani_data['ani_name']) ?>" title="<?php echo $ani_data['ani_name'] ?>"><?php echo $ani_data['ani_name'] ?></a>
                            </h3>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                <?php endforeach; ?>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</section>