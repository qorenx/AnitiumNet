<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title><?= $getAdminSettings['Advanced'][0]['value']; ?> Admin Panel</title>
    <?= $this->include('admin/assets/css') ?>
</head>

<body class="bg-theme bg-theme1">
    <div id="wrapper">
        <?= $this->include('admin/extra/sidebar') ?>
        <?= $this->include('admin/extra/header') ?>

        <div class="clearfix"></div>

        <div class="content-wrapper">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-header">Anime Schedule Settings</div>

                        <form method="post" action="/admin/anime/schedule-delete-all" onsubmit="return confirm('Are you sure you want to delete all schedules?');">
                            <button type="submit" class="btn btn-sm btn-danger">All Schedule Delete</button>
                        </form>

                        <button class="btn btn-info" onclick="myFunction()">Add Schedule</button>

                        <form id="myForm" method="post" action="/admin/anime/schedule" style="display:none;">
                            <div class="card">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="sc_days">Anime Days:</label>
                                        <input class="form-control" type="text" id="sc_days" name="sc_days" required><br>
                                    </div>
                                    <div class="form-group">
                                        <label for="sc_id">Anime ID:</label>
                                        <input class="form-control" type="text" id="sc_id" name="sc_id" required><br>
                                    </div>
                                    <div class="form-group">
                                        <label for="sc_ep">Anime Episode:</label>
                                        <input class="form-control" type="text" id="sc_ep" name="sc_ep"><br>
                                    </div>
                                    <div class="form-group">
                                        <label for="sc_time">Episode Time:</label>
                                        <input class="form-control" type="text" id="sc_time" name="sc_time" required><br>
                                    </div>
                                    <div class="form-group">
                                        <label for="sc_name">Anime Name:</label>
                                        <input class="form-control" type="text" id="sc_name" name="sc_name" required><br>
                                    </div>
                                    <button class="btn btn-info" type="submit" name="submit">Submit</button>
                                </div>
                            </div>
                        </form>
                        <script>
                            function myFunction() {
                                var form = document.getElementById("myForm");
                                form.style.display = form.style.display === "none" ? "block" : "none";
                            }
                        </script>

                        <div class="container">
                            <b>&nbsp;</b>
                            <div class="row">
                                <div class="col-md-12">
                                    <?php
                                    $groupedScheduleList = array_reduce($schedulelist, function ($result, $item) {
                                        $key = $item['sc_id'];
                                        $result[$key][] = $item;
                                        return $result;
                                    }, []);
                                    foreach ($groupedScheduleList as $sc_id => $animeGroup) : ?>
                                        <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#animeGroup<?= $sc_id ?>" aria-expanded="false" aria-controls="animeGroup<?= $sc_id ?>" title="<?= $animeGroup[0]['sc_name'] ?>">
                                            <?= $sc_id ?>
                                        </button>
                                    <?php endforeach; ?>
                                    <?php foreach ($groupedScheduleList as $sc_id => $animeGroup) : ?>
                                        <div class="collapse" id="animeGroup<?= $sc_id ?>">
                                            <div class="card card-body">
                                                <table class="table table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th>Anime UID </th>
                                                            <th>Days</th>
                                                            <th>Episode</th>
                                                            <th>Time</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <?php foreach ($animeGroup as $list) : ?>
                                                            <tr>
                                                                <td><?= $list['sc_id'] ?></td>
                                                                <td><?= $list['sc_days'] ?></td>
                                                                <td><?= $list['sc_ep'] ?></td>
                                                                <td><?= $list['sc_time'] ?></td>
                                                                <td>
                                                                    <form method="post" action="/admin/anime/schedule-delete">
                                                                        <input type="hidden" value="<?= $list['id'] ?>" name="id" />
                                                                        <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                                                                    </form>
                                                                </td>
                                                            </tr>
                                                        <?php endforeach; ?>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    <?php endforeach; ?>
                                </div>
                            </div>
                        </div>
                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                        <script>
                            $(document).ready(function() {
                                $('.collapse').on('show.bs.collapse', function() {
                                    $('.collapse').not(this).collapse('hide');
                                });
                            });
                        </script>
                    </div>
                </div>

                <div class="overlay toggle-menu"></div>
            </div>
        </div>

        <?= $this->include('admin/extra/footer') ?>
    </div>

    <?= $this->include('admin/assets/script') ?>
</body>

</html>