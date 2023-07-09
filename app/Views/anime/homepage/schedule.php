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
                        <div class="swiper-wrapper schedule" id="scheduleDiv" style="transform: translate3d(0px,0px,0px);">
                            <?php
                            $month = date('m');
                            $year = date('Y');
                            $days_in_month = cal_days_in_month(CAL_GREGORIAN, $month, $year);
                            $days = date('d');
                            $dayItem = '';

                            for ($i = 1; $i <= $days_in_month; ++$i) {
                                $isActive = $days == $i ? ' active' : '';
                                $dayItem .= sprintf(
                                    '<div class="swiper-slide day-item" onclick="rundaysCommand(%d)" style="width: 101.714px; margin-right: 13px;">
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
                        <script>
                            function rundaysCommand(days) {
                                var scheduleDiv = document.getElementById('scheduleDiv');
                                scheduleDiv.style.transform = "translate3d(" + (days * -101.714) + "px, 0px, 0px)";
                            }
                        </script>
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

                <ul id="getdaysschedule" class="ulclear table_schedule-list limit-8">

                </ul>
            </div>
            <script>
                const swiperWrapper = document.querySelector('.schedule');
                const nextBtn = document.querySelector('.tsn-next');
                const prevBtn = document.querySelector('.tsn-prev');
                const slideWidth = 101.714;
                let currentPosition = <?php
                                        $days = isset($_GET['days']) ? $_GET['days'] : date('d');
                                        echo ($days * -101.714) . ''
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