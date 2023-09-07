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
            <div class="card-header">Episode Report</div>
            <table class="table table-striped" style="color:white">
              <thead>
                <tr>
                  <th>Report</th>
                  <th>Type</th>
                  <th>Head</th>
                  <th>Content</th>
                  <th>URL</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $counter = 1;
                foreach ($episodereport as $report) : ?>
                  <tr>
                    <td><?= $counter ?></td>
                    <td><?php
                        if ($report['report_type'] == 1) {
                          echo "Broken Episode";
                        } elseif ($report['report_type'] == 2) {
                          echo "Broken Embed";
                        } elseif ($report['report_type'] == 3) {
                          echo "Broken Sound";
                        }
                        ?></td>
                    <td><?= $report['report_head'] ?></td>
                    <td><?= $report['report_content'] ?></td>
                    <td><a href="<?= $report['report_url'] ?>" target="_blank">URL</a></td>
                    <td>
                      <form method="post" action="/admin/report/episode-delete">
                        <input type="hidden" name="post_delete_id" value="<?= $report['id'] ?>" />
                        <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete?')">Delete</button>
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
        <!--End Dashboard Content-->
        <div class="overlay toggle-menu"></div>
      </div>
    </div>
    <?= $this->include('admin/extra/footer') ?>
  </div>
  <?= $this->include('admin/assets/script') ?>
</body>

</html>