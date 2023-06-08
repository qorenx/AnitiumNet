<?= $this->include('admin/extem/header') ?>

<body>
    <div id="wrapper" data-page="page_home">
    <div class="card-body" style="margin: 0% 40%;">

            <form method="post" action="slider">
                <table style="color:white" class="table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Slider UID</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($slider as $slide) : ?>
                            <tr>
                                <td><input type="text" name="id[]" value="SLİDER: <?= $slide['id'] ?>" readonly /></td>
                                <td><input type="text" name="slideruid[<?= $slide['id'] ?>]" value="<?= $slide['slideruid'] ?>" /></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <button type="submit" class="btn btn-primary">Update</button>
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