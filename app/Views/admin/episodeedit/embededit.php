<?= $this->include('admin/extem/header') ?>

<body>
    <div id="wrapper" data-page="page_home">
    <div class="card-body" style="margin: 0% 10%;">
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
                    <?php foreach ($embededit['episoderaw'] as $episodeRaw) { ?>
                        <tr>
                            <td><?php echo $episodeRaw['uid']; ?></td>
                            <td>RAW</td>
                            <td>Episode-<?php echo $episodeRaw['raw_id']; ?></td>
                            <td><?php echo $episodeRaw['raw_name']; ?></td>
                            <td>
                                <form action="<?php echo base_url('admin/episode/embed-deleteraw'); ?>" method="post" onsubmit="return confirm('Are you sure you want to delete?')">
                                    <input type="hidden" name="id" value="<?php echo $episodeRaw['id']; ?>">
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                </form>
                            </td>
                        </tr>
                    <?php } ?>
                    <?php foreach ($embededit['episodesub'] as $episodeSub) { ?>
                        <tr>
                            <td><?php echo $episodeSub['uid']; ?></td>
                            <td>SUB</td>
                            <td>Episode-<?php echo $episodeSub['sub_id']; ?></td>
                            <td><?php echo $episodeSub['sub_name']; ?></td>
                            <td>
                                <form action="<?php echo base_url('admin/episode/embed-deletesub'); ?>" method="post" onsubmit="return confirm('Are you sure you want to delete?')">
                                    <input type="hidden" name="id" value="<?php echo $episodeSub['id']; ?>">
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                </form>
                            </td>
                        </tr>
                    <?php } ?>
                    <?php foreach ($embededit['episodedub'] as $episodeDub) { ?>
                        <tr>
                            <td><?php echo $episodeDub['uid']; ?></td>
                            <td>DUB</td>
                            <td>Episode-<?php echo $episodeDub['dub_id']; ?></td>
                            <td><?php echo $episodeDub['dub_name']; ?></td>
                            <td>
                                <form action="<?php echo base_url('admin/episode/embed-deletedub'); ?>" method="post" onsubmit="return confirm('Are you sure you want to delete?')">
                                    <input type="hidden" name="id" value="<?php echo $episodeDub['id']; ?>">
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                </form>
                            </td>
                        </tr>
                    <?php } ?>
                    <?php foreach ($embededit['episodeturk'] as $episodeTurk) { ?>
                        <tr>
                            <td><?php echo $episodeTurk['uid']; ?></td>
                            <td>TURK</td>
                            <td>Episode-<?php echo $episodeTurk['turk_id']; ?></td>
                            <td><?php echo $episodeTurk['turk_name']; ?></td>
                            <td>
                                <form action="<?php echo base_url('admin/episode/embed-deleteturk'); ?>" method="post" onsubmit="return confirm('Are you sure you want to delete?')">
                                    <input type="hidden" name="id" value="<?php echo $episodeTurk['id']; ?>">
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                </form>
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
    <div style="height:100px;"></div>
    <div id="mask-overlay"></div>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
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