<?= $this->include('admin/extem/header') ?>

<body>
    <div id="wrapper" data-page="page_home">
    <div class="card-body" style="margin: 0% 10%;">
                <div class="row">
                <button onclick="if (confirm('Are you sure you want to remove all reports?')) { window.location.href = '<?php echo base_url('admin/anisettings/postreportview/tracert'); ?>'; }">Remove all reports.</button>
                <div class="col-md-12">
                    <table class="table table-striped" style="color:white">
                        <thead>
                            <tr>
                                <th>id</th>
                                <th>Post Owner</th>
                                <th>Post Content</th>
                                <th>Post Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $counter = 1;
                            foreach ($anireports as $report) : ?>
                                <tr>
                                    <td><?= $report['id'] ?></td>
                                    <td><?= $report['username'] ?></td>
                                    <td><?= $report['post_content'] ?></td>
                                    <td>
                                        <form method="post" action="postreportview/delete">
                                            <input type="hidden" name="report_ids" value="<?= $report['ids'] ?>" />
                                            <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete?')"> Post Delete</button>
                                        </form>
                                    </td>
                                </tr>
                            <?php $counter++;
                            endforeach; ?>
                        </tbody>
                    </table>
                    <?= $pager->links() ?>
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