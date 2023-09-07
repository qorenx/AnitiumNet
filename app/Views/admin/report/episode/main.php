<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title><?php echo $getAdminSettings['Advanced'][0]['value']; ?> Admin Panel</title>
  <?= $this->include('admin/assets/css') ?>
</head>

<body class="bg-theme bg-theme1">
  <div id="wrapper">
    <?= $this->include('admin/extra/sidebar') ?>
    <?= $this->include('admin/extra/header') ?>
    <div class="clearfix"></div>
    <div class="content-wrapper">
      <div class="container-fluid">
        <!--Start Dashboard Content-->
        <div class="row">
          <div class="col-12 col-lg-12">
            <div class="card-header">Episode Main Report</div>
            <table class="table table-striped" style="color:white">
              <thead>
                <tr>
                  <th>Report</th>
                  <th>Spoiler</th>
                  <th>Post Content</th>
                  <th>Report Delete</th>
                  <th>Comment and Report Delete</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $counter = 1;
                foreach ($commentreport as $report) : ?>
                  <tr>
                    <td><?= $counter ?></td>
                    <td><?= ($report['post_spo'] == 0) ? 'No' : 'Yes'; ?></td>
                    <td><textarea rows="5" cols="50" readonly><?= $report['post_content'] ?></textarea></td>
                    <td>
                      <form method="post" action="/admin/report/episode/main/reportdeleted">
                        <input type="hidden" name="report_id" value="<?= $report['report_id'] ?>" />
                        <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete?')">Delete</button>
                      </form>
                    </td>
                    <td>
                      <form method="post" action="/admin/report/episode/main/commentandreportdeleted">
                        <input type="hidden" name="comment_id" value="<?= $report['comment_id'] ?>" />
                        <input type="hidden" name="report_id" value="<?= $report['report_id'] ?>" />
                        <input type="hidden" name="repy_id" value="<?= $report['repy_id'] ?>" />
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
        <!--End Dashboard Content-->
        <div class="overlay toggle-menu"></div>
      </div>
    </div>
    <?= $this->include('admin/extra/footer') ?>
-  </div>
  <?= $this->include('admin/assets/script') ?>
</body>

</html>