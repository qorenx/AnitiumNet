<?= $this->include('admin/extem/header') ?>

<body>
    <div id="wrapper" data-page="page_home">
        <form action="<?php echo base_url('admin/episode/episode-turk-add'); ?>" method="post">
            <div class="card-body" style="margin: 0% 10%;">
                <div class="form-group row">
                    <label for="uid" class="col-sm-4 col-form-label">Anime UID:</label>
                    <div class="col-sm-8">
                        <input type="text" name="uid" id="uid" class="form-control" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="turk_id" class="col-sm-4 col-form-label">Episode ID(1, 1.5 etc):</label>
                    <div class="col-sm-8">
                        <input type="number" name="turk_id" id="turk_id" class="form-control" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="ep_tr_webconverter" class="col-sm-4 col-form-label">Auto/Manuel Embed:</label>
                    <div class="col-sm-8">
                        <select name="ep_tr_webconverter" id="ep_tr_webconverter" class="form-control">
                            <option value="1">Automatic Embed(YT,Sbani,Dodo,PlayTaku,mp4upload, vimeo and etc)</option>
                            <option value="0">Manuel Embed</option>
                        </select>
                    </div>
                </div>
                <template>
                    <div class="form-group row">
                        <label for="turk_name" class="col-sm-4 col-form-label">Short Name Provider:</label>
                        <div class="col-sm-8">
                            <input type="text" name="turk_name[]" id="turk_name" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="turk_frame" class="col-sm-4 col-form-label">Video URL:</label>
                        <div class="col-sm-8">
                            <input type="text" name="turk_frame[]" id="turk_frame" class="form-control" required>
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
                        inputsExtra.removeChild(inputsExtra.lastElementChild);
                    }
                    
                    function addMore() {
                        const clone = template.content.cloneNode(true);
                        document.getElementById('inputs-extra').appendChild(clone);
                    }
                </script>
                <footer style="position:fixed;right:auto;bottom:0;left:0;z-index:1030;" class="fixed-bottom">
                    <div class="card-footer">
                        <input class="btn btn-primary" type="submit" value="Submit">
                    </div>
                </footer>
            </div>
        </form>
    </div>
    <div style="height:100px;"></div>
    <div id="mask-overlay"></div>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js">
    </script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/js-cookie@rc/dist/js.cookie.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>files/js/app.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>files/js/comman.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>files/js/movie.js"></script>
    <link rel="stylesheet" href="<?php echo base_url(); ?>files/css/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>files/js/function.js"></script>
    </div>
</body>

</html>