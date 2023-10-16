<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title><?php echo $getAdminSettings['Advanced'][0]['value']; ?> Admin Panel</title>
    <?= $this->include('Backend/Default/Anime/İnclude/StyleLoad') ?>
</head>

<body class="bg-theme bg-theme1">
    <div id="wrapper">
        <?= $this->include('Backend/Default/Anime/İnclude/SideBar') ?>
        <?= $this->include('Backend/Default/Anime/İnclude/Header') ?>
        <div class="clearfix"></div>
        <div class="content-wrapper">
            <div class="container-fluid">

                <!--Start Dashboard Content-->
                <div class="row">
                    <div class="col-12 col-lg-12">
                        <div class="card-header">Embed ADD</div>
                        <form action="<?php echo base_url('admin/episode/embed'); ?>" method="post">
                            <div class="card-body">
                                <div class="form-group row">
                                    <label for="embed_uid" class="col-sm-4 col-form-label">Anime UID:</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="embed_uid" id="embed_uid" class="form-control" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="embed_id" class="col-sm-4 col-form-label">Episode ID:</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="embed_id" id="embed_id" class="form-control" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="embed_type" class="col-sm-4 col-form-label">Episode Type:</label>
                                    <div class="col-sm-8">
                                        <select name="embed_type" id="embed_type" class="form-control">
                                            <option value="1">Raw</option>
                                            <option value="2">SUB</option>
                                            <option value="3">DUB</option>
                                            <option value="4">TURK</option>
                                        </select>
                                    </div>
                                </div>
                                <template>
                                    <div class="form-group row">
                                        <label for="embed_name" class="col-sm-4 col-form-label">Embed Name:</label>
                                        <div class="col-sm-8">
                                            <select name="embed_name[]" id="embed_name" class="form-control">
                                                <?php
                                                $selected_data = explode(",", $getAdminSettings['Advanced'][2]['value']);
                                                foreach ($selected_data as $context) : ?>
                                                    <option value="<?php echo $context; ?>"><?php echo $context; ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="embed_order" class="col-sm-4 col-form-label">Embed Order:</label>
                                        <div class="col-sm-8">
                                            <select name="embed_order[]" id="embed_order" class="form-control">
                                                <?php
                                                $selected_data = ['0', '1', '2', '3', '4'];
                                                foreach ($selected_data as $context) : ?>
                                                    <option value="<?php echo $context; ?>"><?php

                                                                                            $embeds = array(
                                                                                                "First Row Embed",
                                                                                                "Second Row Embed",
                                                                                                "Third Row Embed",
                                                                                                "Fourth Row Embed",
                                                                                                "Fifth Row Embed"
                                                                                            );

                                                                                            if (array_key_exists($context, $embeds)) {
                                                                                                echo $embeds[$context];
                                                                                            }
                                                                                            ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="embed_frame" class="col-sm-4 col-form-label">Video URL:</label>
                                        <div class="col-sm-8">
                                            <input type="text" name="embed_frame[]" id="embed_frame" class="form-control" required>
                                        </div>
                                    </div>
                                </template>
                                <div id="inputs-extra"></div>
                                <button type="button" onclick="addMore()" style="background-color: #4CAF50; color: white; padding: 10px 20px; border: none; cursor: pointer; border-radius: 5px;">Add Embed</button>
                                <button type="button" onclick="removeLast()" style="background-color: #9AAF90; color: white; padding: 10px 20px; border: none; cursor: pointer; border-radius: 5px;">Remove</button>
                                <script>
                                    const template = document.querySelector('template');

                                    function removeLast() {
                                        const inputsExtra = document.getElementById('inputs-extra');
                                        for (let i = 0; i < 3; i++) {
                                            inputsExtra.removeChild(inputsExtra.lastElementChild);
                                        }
                                    }

                                    function addMore() {
                                        const clone = template.content.cloneNode(true);
                                        document.getElementById('inputs-extra').appendChild(clone);
                                    }
                                </script>
                                <div class="card-footer">
                                    <input class="btn btn-primary" type="submit" value="Embed Adding">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!--End Dashboard Content-->

                <div class="overlay toggle-menu"></div>
            </div>
        </div>
        <?= $this->include('Backend/Default/Anime/İnclude/Footer') ?>
    </div>
    <?= $this->include('Backend/Default/Anime/İnclude/ScriptLoad') ?>
</body>