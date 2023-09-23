<head>
  <!-- JS Files -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script type="text/javascript" src="<?php echo base_url('assest/player/jwplayer/hls.light.min.js'); ?>"></script>
  <script type="text/javascript" src="<?php echo base_url('assest/player/jwplayer/provider.hlsjs.js'); ?>"></script>
  <script src="https://ssl.p.jwpcdn.com/player/v/8.23.1/jwplayer.js"></script>
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('assest/player/jwplayer/anitium_skin.css'); ?>">
  <script type="text/javascript">
    jwplayer.key = "64HPbvSQorQcd52B8XFuhMtEoitbvY/EXJmMBfKcXZQU2Rnn";
  </script>

</head>



<!--  Fullscreen Video CSS -->
<style>
  #player {
    position: absolute;
    width: 100% !important;
    height: 100% !important;
  }
</style>
<!-- Player -->
<div id="player"></div>



<script>
  const playerInstance = jwplayer("player").setup({
    controls: true,
    sharing: true,
    displaytitle: true,
    displaydescription: true,
    abouttext: "<?php echo $getAdminSettings['Advanced'][0]['value']; ?>",
    aboutlink: "<?php echo $getAdminSettings['License'][0]['value']; ?>",

    skin: {
      name: "anitium"
    },

    logo: {
      file: "<?php echo $getAdminSettings['Advanced'][3]['value']; ?>",
      link: "<?php echo $getAdminSettings['Donation'][0]['value']; ?>"
    },

    captions: {
      color: "#FFF",
      fontSize: 14,
      backgroundOpacity: 0,
      edgeStyle: "raised"
    },

    playlist: [{
      title: "<?php echo $episode['ep_name'] ?? $episode['ep_jname'] ?? $episode['ep_romaji']; ?>",
      description: "<?php echo htmlspecialchars($anime['ani_name'], ENT_QUOTES, 'UTF-8'); ?>",
      image: "<?php echo $anime['ani_poster']; ?>",
      file: "<?php echo $play->download; ?>",
      sources: [
        <?php
        usort($play->sources, function ($a, $b) {
          return $b->quality <=> $a->quality;
        });

        foreach ($play->sources as $source) :
        ?> {
            file: "<?php echo $source->url ?>",
            label: "<?php echo $source->quality ?>",
            default: <?php echo ($source->quality == 'default') ? 'true' : 'false'; ?>
          },
        <?php endforeach; ?>
      ],
    }],
    advertising: {
      client: "vast",
      schedule: [{
        offset: "pre",
        tag: ""
      }]
    }
  });

  playerInstance.on("ready", function() {
    const buttonId = "download-video-button";
    const iconPath =
      "data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCIgd2lkdGg9IjY0IiBoZWlnaHQ9IjY0Ij48cGF0aCBmaWxsPSJub25lIiBkPSJNMCAwaDI0djI0SDB6Ii8+PHBhdGggZD0iTTMgMTloMTh2Mkgzdi0yem0xMC01LjgyOEwxOS4wNzEgNy4xbDEuNDE0IDEuNDE0TDEyIDE3IDMuNTE1IDguNTE1IDQuOTI5IDcuMSAxMSAxMy4xN1YyaDJ2MTEuMTcyeiIgZmlsbD0icmdiYSgyNDcsMjQ3LDI0NywxKSIvPjwvc3ZnPg==";
    const tooltipText = "Download Video";

    // Call the player's `addButton` API method to add the custom button
    playerInstance.addButton(iconPath, tooltipText, buttonClickAction, buttonId);

    // This function is executed when the button is clicked
    function buttonClickAction() {
      const playlistItem = playerInstance.getPlaylistItem();
      const anchor = document.createElement("a");
      const fileUrl = playlistItem.file;
      anchor.setAttribute("href", '<?php echo $play->download; ?>');
      anchor.setAttribute("target", "_blank");
      const downloadName = playlistItem.file.split("/").pop();
      anchor.setAttribute("download", downloadName);
      anchor.style.display = "none";
      document.body.appendChild(anchor);
      anchor.click();
      document.body.removeChild(anchor);
    }

    // Move the timeslider in-line with other controls
    const playerContainer = playerInstance.getContainer();
    const buttonContainer = playerContainer.querySelector(".jw-button-container");
    const spacer = buttonContainer.querySelector(".jw-spacer");
    const timeSlider = playerContainer.querySelector(".jw-slider-time");
    buttonContainer.replaceChild(timeSlider, spacer);

    // Forward 10 seconds
    const rewindContainer = playerContainer.querySelector(
      ".jw-display-icon-rewind"
    );
    const forwardContainer = rewindContainer.cloneNode(true);
    const forwardDisplayButton = forwardContainer.querySelector(
      ".jw-icon-rewind"
    );
    forwardDisplayButton.style.transform = "scaleX(-1)";
    forwardDisplayButton.ariaLabel = "Forward 10 Seconds";
    const nextContainer = playerContainer.querySelector(".jw-display-icon-next");
    nextContainer.parentNode.insertBefore(forwardContainer, nextContainer);

    // control bar icon
    playerContainer.querySelector(".jw-display-icon-next").style.display = "none"; // hide next button
    const rewindControlBarButton = buttonContainer.querySelector(
      ".jw-icon-rewind"
    );
    const forwardControlBarButton = rewindControlBarButton.cloneNode(true);
    forwardControlBarButton.style.transform = "scaleX(-1)";
    forwardControlBarButton.ariaLabel = "Forward 10 Seconds";
    rewindControlBarButton.parentNode.insertBefore(
      forwardControlBarButton,
      rewindControlBarButton.nextElementSibling
    );

    // add onclick handlers
    [forwardDisplayButton, forwardControlBarButton].forEach((button) => {
      button.onclick = () => {
        playerInstance.seek(playerInstance.getPosition() + 10);
      };
    });
  });
</script>