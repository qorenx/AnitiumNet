<?php foreach ($schedule as $item) : ?>
    <li>
        <a href="<?=
                    isset($item['sc_ep']) && !empty($item['sc_ep'])
                        ? base_url('watch?anime=') . str_replace(" ", "+", $item['sc_name']) . "&uid=" . $item['sc_id'] . "&eps=" . $item['sc_ep']
                        : base_url('anime/') . $item['sc_id'] . "/" . str_replace(" ", "-", $item['sc_name'])
                    ?>" class="tsl-link">
            <div class="time">
                <?= $item['sc_time'] ?>
            </div>
            <div class="film-detail">
                <h3 class="film-name dynamic-name">
                    <?= $item['sc_name'] ?>
                </h3>
                <div class="fd-play">
                    <button type="button" class="btn btn-sm btn-play"><i class="fas fa-play mr-2"></i>
                        <?php
                        if (!empty($item['sc_ep'])) {
                            echo "Episode " . $item['sc_ep'];
                        } else {
                            echo "Watch";
                        }
                        ?>
                    </button>
                </div>
            </div>
        </a>
    </li>
<?php endforeach; ?>