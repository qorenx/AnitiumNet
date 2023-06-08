<?= $this->include('admin/extem/header') ?>

<body>
    <div id="wrapper" data-page="page_home">
    <div class="card-body" style="margin: 0% 10%;">
        <div class="row">
        <div class="col-md-12">
            <table class="table table-striped" style="color:white">
                <thead>
                    <tr>
                        <th>DB İD</th>
                        <th>Main Anime</th>
                        <th>Season İD</th>
                        <th>Season Name</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($seasonedit as $season) : ?>
                        <tr>
                        <td><?= $season['id'] ?></td>
                            <td><?= $season['uid'] ?></td>
                            <td><?= $season['suid'] ?></td>
                            <td><a href="<?= base_url('anime/' . $season['suid'] . '/' . str_replace(' ', '-', $season['sname'])) ?>" target="_blank"><?= $season['sname'] ?></a></td>
                            <td><a href="<?php echo base_url('admin/anime/season-editdelete/' . $season['id']); ?>" onclick="return confirm('Are you sure you want to delete?')" class="btn btn-danger">Delete</a></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
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