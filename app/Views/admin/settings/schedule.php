<?= $this->include('admin/extem/header') ?>

<body>
    <div id="wrapper" data-page="page_home">
        <div class="card-body" style="margin: 0% 10%;">
            <form method="post" action="schedule/deleteall" onsubmit="return confirm('Are you sure you want to delete all schedules?');">
                <button type="submit" class="btn btn-sm btn-danger">All Schedule Delete</button>
            </form>
            <button style="background-color: #008CBA; padding: 10px 20px; border: none; color: white; font-size: 16px; margin-bottom: 10px;" onclick="myFunction()">Add Schedule</button>
            <form id="myForm" method="post" action="schedule/add" style="display:none; background-color: #f2f2f2; padding: 20px;">
                <div class="card">
                    <div class="card-body">
                        <div class="form-group">
                            <label style="color:black" for="sc_days">Anime Days(1,8,15,22,29 If the same anime airs on the same day, write it like this.):</label>
                            <input class="form-control" type="text" id="sc_days" name="sc_days" required><br>
                        </div>
                        <div class="form-group">
                            <label style="color:black" for="sc_id">Anime ID:</label>
                            <input class="form-control" type="text" id="sc_id" name="sc_id" required><br>
                        </div>
                        <div class="form-group">
                            <label style="color:black" for="sc_ep">Anime Episode(If you add multiple, leave the episode blank. Watch text will appear instead of 1 or 2 etc):</label>
                            <input class="form-control" type="text" id="sc_ep" name="sc_ep"><br>
                        </div>
                        <div class="form-group">
                            <label style="color:black" for="sc_time">Episode Time(11:10 or 12:00 etc..):</label>
                            <input class="form-control" type="text" id="sc_time" name="sc_time" required><br>
                        </div>
                        <div class="form-group">
                            <label style="color:black" for="sc_name">Anime Name:</label>
                            <input class="form-control" type="text" id="sc_name" name="sc_name" required><br>
                        </div>
                    </div>
                </div>
                <button style="background-color: #008CBA; padding: 10px 20px; border: none; color: white; font-size: 16px;" type="submit" name="submit">Submit</button>
            </form>
            <script>
                function myFunction() {
                    var form = document.getElementById("myForm");
                    if (form.style.display === "none") {
                        form.style.display = "block";
                    } else {
                        form.style.display = "none";
                    }
                }
            </script>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <table style="color:white" class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Days</th>
                                    <th>AnimeID</th>
                                    <th>AnimeEP</th>
                                    <th>AnimeEpTime</th>
                                    <th>AnimeName</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                foreach ($schedulelist as $list) {
                                ?>
                                    <tr>
                                        <td><?= $list['sc_days'] ?></td>
                                        <td><?= $list['sc_id'] ?></td>
                                        <td><?= $list['sc_ep'] ?></td>
                                        <td><?= $list['sc_time'] ?></td>
                                        <td><?= $list['sc_name'] ?></td>
                                        <td>
                                            <form method="post" action="schedule/delete">
                                                <input type="hidden" value="<?= $list['id'] ?>" name="id" />
                                                <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                                            </form>
                                        </td>
                                    </tr>
                                <?php
                                }
                                ?>
                            </tbody>
                        </table>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <?php if ($pager) : ?>
                                        <?= $pager->links() ?>
                                    <?php endif ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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