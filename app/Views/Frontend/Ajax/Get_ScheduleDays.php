<?php foreach ($ScheduleDay as $DaysData) : ?>
    <li>
        <a href="<?=
                    isset($DaysData['sc_ep']) && !empty($DaysData['sc_ep'])
                        ? base_url('watch?anime=') . preg_replace("/[^\w\-]+/", "-", $DaysData['ani_name']) . "&uid=" . $DaysData['sc_id'] . "&eps=" . $DaysData['sc_ep']
                        : base_url('anime/') . $DaysData['sc_id'] . "/" . preg_replace("/[^\w\-]+/", "-", $DaysData['ani_name'])
                    ?>" class="tsl-link">
            <div class="time">
                <?= $DaysData['sc_time'] ?>
            </div>
            <div class="film-detail">
                <h3 class="film-name dynamic-name">
                    <?= $DaysData['ani_name'] ?>
                </h3>
                <div class="fd-play">
                    <button type="button" class="btn btn-sm btn-play"><i class="fas fa-play mr-2"></i>
                        <?php
                        if (!empty($DaysData['sc_ep'])) {
                            echo "Episode " . $DaysData['sc_ep'];
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