<div id="servers-content">
    <div class="ps_-status">
        <div class="content">
            <div class="server-notice">
                <strong>You are watching <b>Episode <?= $embedID ?></b></strong>
                If current server doesn't work please try other servers beside.
            </div>
        </div>
    </div>
    <div id="embed-list"></div>
    <?php if (auth()->user()->raw_status ?? 1 == 1) : ?>
        <?php if (!empty($embedData[1])) : ?>
            <div class="ps_-block ps_-block-raw servers-raw">
                <div class="ps__-title"><i class="fas fa-closed-captioning mr-2"></i>RAW:</div>
                <div class="ps__-list">
                    <?php
                    $dataArray = json_decode(json_encode($embedData[1]), false);
                    foreach ($dataArray as $Data) : ?>
                        <div class="item server-item">
                            <a href="#" id="embed-<?= $Data->id ?>" class="btn" onclick="getEmbed(<?= $embedUID ?>, <?= $embedID ?>,'<?= $Data->id ?>')"> <?= $Data->embed_name ?></a>
                        </div>
                    <?php endforeach; ?>
                </div>
                <div class="clearfix"></div>
            </div>
        <?php endif; ?>
    <?php endif; ?>
    <?php if (auth()->user()->sub_status ?? 1 == 1) : ?>
        <?php if (!empty($embedData[2])) : ?>
            <div class="ps_-block ps_-block-sub servers-sub">
                <div class="ps__-title"><i class="fas fa-closed-captioning mr-2"></i>SUB:</div>
                <div class="ps__-list">
                    <?php
                    $dataArray = json_decode(json_encode($embedData[2]), false);
                    foreach ($dataArray as $Data) : ?>
                        <div class="item server-item">
                            <a href="#" id="embed-<?= $Data->id ?>" class="btn" onclick="getEmbed(<?= $embedUID ?>, <?= $embedID ?>,'<?= $Data->id ?>')"> <?= $Data->embed_name ?></a>
                        </div>
                    <?php endforeach; ?>
                </div>
                <div class="clearfix"></div>
            </div>
        <?php endif; ?>
    <?php endif; ?>
    <?php if (auth()->user()->dub_status ?? 1 == 1) : ?>
        <?php if (!empty($embedData[3])) : ?>
            <div class="ps_-block ps_-block-dub servers-dub">
                <div class="ps__-title"><i class="fas fa-closed-captioning mr-2"></i>Dub:</div>
                <div class="ps__-list">
                    <?php
                    $dataArray = json_decode(json_encode($embedData[3]), false);
                    foreach ($dataArray as $Data) : ?>
                        <div class="item server-item">
                            <a href="#" id="embed-<?= $Data->id ?>" class="btn" onclick="getEmbed(<?= $embedUID ?>, <?= $embedID ?>,'<?= $Data->id ?>')"> <?= $Data->embed_name ?></a>
                        </div>
                    <?php endforeach; ?>
                </div>
                <div class="clearfix"></div>
            </div>
        <?php endif; ?>
    <?php endif; ?>
    <?php if (auth()->user()->turk_status ?? 1 == 1) : ?>
        <?php if (!empty($embedData[4])) : ?>
            <div class="ps_-block ps_-block-turk servers-turk">
                <div class="ps__-title"><i class="fas fa-closed-captioning mr-2"></i>Turk:</div>
                <div class="ps__-list">
                    <?php
                    $dataArray = json_decode(json_encode($embedData[4]), false);
                    foreach ($dataArray as $Data) : ?>
                        <div class="item server-item">
                            <a href="#" id="embed-<?= $Data->id ?>" class="btn" onclick="getEmbed(<?= $embedUID ?>, <?= $embedID ?>,'<?= $Data->id ?>')"> <?= $Data->embed_name ?></a>
                        </div>
                    <?php endforeach; ?>
                </div>
                <div class="clearfix"></div>
            </div>
        <?php endif; ?>
    <?php endif; ?>
</div>
<?php if (isset(auth()->user()->groups[0]) && in_array(auth()->user()->groups[0], ['superadmin', 'admin'])) : ?>
    <?= $this->include('anime/getepisode/admin/controll') ?>
<?php endif; ?>