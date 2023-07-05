<?= $this->include('admin/extem/header') ?>

<body>
    <div id="wrapper" data-page="page_home">
        <div class="card-body" style="margin: 0% 10%;">
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-striped" style="color:white">
                        <thead>
                            <tr>
                                <th>Report</th>
                                <th>Board Head</th>
                                <th>Board Content</th>
                                <th>Report Delete</th>
                                <th>Comment and Report Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $counter = 1;
                            foreach ($boardreport as $report) : ?>
                                <tr>
                                    <td><?= $counter ?></td>
                                    <td><?= $report['post_head'] ?></td>
                                    <td><textarea rows="5" cols="50" readonly><?= $report['post_content'] ?></textarea></td>
                                    <td>
                                        <form method="post" action="/admin/report/boardreportdelete">
                                            <input type="hidden" name="report_id" value="<?= $report['r_id'] ?>" />
                                            <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete?')">Delete</button>
                                        </form>
                                    </td>
                                    <td>
                                        <form method="post" action="/admin/report/boardandreportdelete">
                                            <input type="hidden" name="comment_id" value="<?= $report['b_id'] ?>" />
                                            <input type="hidden" name="report_id" value="<?= $report['r_id'] ?>" />
                                            <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete?')">Delete</button>
                                        </form>
                                    </td>
                                </tr>
                            <?php $counter++;
                            endforeach; ?>
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