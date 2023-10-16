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
                        <div class="card-header">Embed Editing</div>
                        <?php
                        $embededit = $embededitresult;
                        ?>
                        <table style="color:white" class="table">
                            <thead>
                                <tr>
                                    <th>Anime UID</th>
                                    <th>Type</th>
                                    <th>Episode ID</th>
                                    <th>Embed Name</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($embededitresult as $episode) { ?>
                                    <tr>
                                        <td><?php echo $episode['embed_uid']; ?></td>
                                        <td><?php
                                            switch ($episode['embed_type']) {
                                                case 1:
                                                    echo 'RAW';
                                                    break;
                                                case 2:
                                                    echo 'SUB';
                                                    break;
                                                case 3:
                                                    echo 'DUB';
                                                    break;
                                                case 4:
                                                    echo 'TURK';
                                                    break;
                                                default:
                                                    echo 'Invalid data';
                                                    break;
                                            }
                                            ?></td>
                                        <td>Episode-<?php echo $episode['embed_id']; ?></td>
                                        <td><a href="<?php echo $episode['embed_frame']; ?>"><?php echo $episode['embed_name']; ?></a></td>
                                        <td>
                                            <form action="<?php echo base_url('admin/episode/embed-delete'); ?>" method="post" onsubmit="return confirm('Are you sure you want to delete?')">
                                                <input type="hidden" name="id" value="<?php echo $episode['id']; ?>">
                                                <button type="submit" class="btn btn-danger">Delete</button>
                                            </form>
                                        </td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
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