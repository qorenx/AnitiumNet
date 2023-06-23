<div id="schedule-block">
    <section class="block_area block_area_sidebar block_area-schedule schedule-full">
        <div class="block_area-header">
            <div class="float-left bah-heading mr-4">
                <h2 class="cat-heading">Estimated Schedule</h2>
            </div>
            <div class="float-left bah-time">
                <span class="current-time">
                    <span id="timezone">(GMT+03:00)</span>
                    <span id="current-date"></span>
                    <span id="clock"></span>
                </span>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="block_area-content">
            <div class="table_schedule">
                <div class="table_schedule-date">
                    <div class="swiper-container swiper-container-initialized swiper-container-horizontal">
                        <div class="swiper-wrapper schedule" style="transform: translate3d(<?php
                                                                                            $days = isset($_GET['days']) ? $_GET['days'] : date('d');
                                                                                            echo ($days * -141.714) . 'px,'
                                                                                            ?> 0px, 0px);">
                            <?php
                            $month = date('m');
                            $year = date('Y');
                            $days_in_month = cal_days_in_month(CAL_GREGORIAN, $month, $year);
                            $days = $_GET['days'] ?? date('d');
                            $dayItem = '';

                            for ($i = 1; $i <= $days_in_month; ++$i) {
                                $isActive = $days == $i ? ' active' : '';
                                $dayItem .= sprintf(
                                    '<div class="swiper-slide day-item" onclick="location.href=\'?days=%d\'" style="width: 141.714px; margin-right: 13px;">
          <div class="tsd-item%s">
            <span>%s</span>
            <div class="date">%d</div>
          </div>
        </div>',
                                    $i,
                                    $isActive,
                                    date('D', strtotime($year . '-' . $month . '-' . $i)),
                                    $i
                                );
                            }

                            echo $dayItem;
                            ?>
                        </div>
                        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                    </div>
                    <div class="ts-navigation">
                        <button class="btn tsn-next" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false">
                            <i class="fas fa-angle-right"></i>
                        </button>
                        <button class="btn tsn-prev" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="false">
                            <i class="fas fa-angle-left"></i>
                        </button>
                    </div>
                </div>
                <div class="clearfix"></div>

                <ul class="ulclear table_schedule-list limit-8">
                    <?php
                    $days = $_GET['days'] ?? date('d');
                    $sortedSchedule = [];
                    foreach ($schedule as $item) {
                        $time = substr($item['sc_time'], 0, 5);
                        if (!isset($sortedSchedule[$time])) {
                            $sortedSchedule[$time] = [$item];
                        } else {
                            array_push($sortedSchedule[$time], $item);
                        }
                    }
                    ksort($sortedSchedule);
                    foreach ($sortedSchedule as $time => $scheduleItems) {
                        foreach ($scheduleItems as $item) {
                            if ($item['sc_days'] == $days) {
                                $base_url = empty($item['sc_ep']) ? 'anime/' : 'watch/';
                                $link = base_url('/watch?anime=' . urlencode($item['sc_name']) . '&uid=' . $item['sc_id'] . '&eps=' . $item['sc_ep']);
                    ?>
                                <li>
                                    <a href="<?= $link ?>" class="tsl-link">
                                        <div class="time"><?= substr($item['sc_time'], 0, 5); ?></div>
                                        <div class="film-detail">
                                            <h3 class="film-name dynamic-name"><?= $item['sc_name']; ?></h3>
                                            <div class="fd-play">
                                                <button type="button" class="btn btn-sm btn-play">
                                                    <i class="fas fa-play mr-2"></i>
                                                    <?= empty($item['sc_ep']) ? "Watch" :  'Episode ' . $item['sc_ep']; ?>
                                                </button>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                    <?php
                            }
                        }
                    }
                    ?>
                </ul>
            </div>
            <script>
                const swiperWrapper = document.querySelector('.schedule');
                const nextBtn = document.querySelector('.tsn-next');
                const prevBtn = document.querySelector('.tsn-prev');
                const slideWidth = 141.714;
                let currentPosition = <?php
                                        $days = isset($_GET['days']) ? $_GET['days'] : date('d');
                                        echo ($days * -141.714) . ''
                                        ?>;

                nextBtn.addEventListener('click', () => {
                    currentPosition -= slideWidth + 13;
                    swiperWrapper.style.transform = `translate3d(${currentPosition}px, 0px, 0px)`;
                    swiperWrapper.style.transitionDuration = '300ms';
                });

                prevBtn.addEventListener('click', () => {
                    currentPosition += slideWidth + 13;
                    swiperWrapper.style.transform = `translate3d(${currentPosition}px, 0px, 0px)`;
                    swiperWrapper.style.transitionDuration = '300ms';
                });
            </script>
            <script>
                setInterval(() => {
                    const date = new Date();
                    const currentDateTime = date.toLocaleString('en-US', {
                        timeZone: 'Europe/Istanbul'
                    });
                    const [currentDate, currentTime] = currentDateTime.split(',');

                    const currentDateElement = document.getElementById('current-date');
                    currentDateElement.textContent = currentDate;

                    const clockElement = document.getElementById('clock');
                    clockElement.textContent = currentTime;
                }, 1000)
            </script>
        </div>
    </section>
</div>