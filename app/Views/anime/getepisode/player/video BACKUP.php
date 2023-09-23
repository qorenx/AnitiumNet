
<head>
<!-- JS Files -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo base_url('assest/player/hls.light.min.js'); ?>"></script>
<script type="text/javascript" src="<?php echo base_url('assest/player/provider.hlsjs.js'); ?>"></script>
<script src="https://ssl.p.jwpcdn.com/player/v/8.23.1/jwplayer.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo base_url('assest/player/anitium_skin.css'); ?>">
<script type="text/javascript">jwplayer.key="64HPbvSQorQcd52B8XFuhMtEoitbvY/EXJmMBfKcXZQU2Rnn";</script>

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
  abouttext: "Buy Me a Coffee",
  aboutlink: "https://www.buymeacoffee.com/pingo",

  skin: {
    name: "netflix"
  },

  logo: {
    file:
      "https://upload.wikimedia.org/wikipedia/commons/0/08/Netflix_2015_logo.svg",
    link: "https://www.buymeacoffee.com/pingo"
  },

  captions: {
    color: "#FFF",
    fontSize: 14,
    backgroundOpacity: 0,
    edgeStyle: "raised"
  },
  
  playlist: [
    {
      title: "Sprite Fright - Open Movie by Blender Studio",
      description: "You're Watching",
      image: "https://i.ytimg.com/vi/_cMxraX_5RE/maxresdefault.jpg",
      file: "<?php echo $play->download; ?>",
      sources: [
        <?php foreach ($play->sources as $source): ?>{
          file: "<?php echo $source->url ?>",
          label: "<?php echo $source->quality ?>",
          default: <?php echo ($source->quality == 'default') ? 'true' : 'false';?>
        }, <?php endforeach; ?>
      ],
      captions: [
        {
          file:
            "https://raw.githubusercontent.com/iPingOi/jwplayer/main/%5BBengali%5D%20Sprite%20Fright%20-%20Blender%20Open%20Movie.srt",
          label: "Bangla",
          kind: "captions"
        },
        {
          file:
            "https://raw.githubusercontent.com/iPingOi/jwplayer/main/%5BEnglish%5D%20Sprite%20Fright%20-%20Blender%20Open%20Movie.srt",
          label: "English",
          kind: "captions",
          default: true
        },
        {
          file:
            "https://raw.githubusercontent.com/iPingOi/jwplayer/main/%5BGerman%5D%20Sprite%20Fright%20-%20Blender%20Open%20Movie.srt",
          label: "German",
          kind: "captions"
        },
        {
          file:
            "https://raw.githubusercontent.com/iPingOi/jwplayer/main/%5BHungarian%5D%20Sprite%20Fright%20-%20Blender%20Open%20Movie.srt",
          label: "Hungarian",
          kind: "captions"
        },
        {
          file:
            "https://raw.githubusercontent.com/iPingOi/jwplayer/main/%5BItalian%5D%20Sprite%20Fright%20-%20Blender%20Open%20Movie.srt",
          label: "Italian",
          kind: "captions"
        },
        {
          file:
            "https://raw.githubusercontent.com/iPingOi/jwplayer/main/%5BMalayalam%5D%20Sprite%20Fright%20-%20Blender%20Open%20Movie.srt",
          label: "Malayalam",
          kind: "captions"
        },
        {
          file:
            "https://raw.githubusercontent.com/iPingOi/jwplayer/main/%5BPortugu%C3%AAs%20(Portugal)%5D%20Sprite%20Fright%20-%20Blender%20Open%20Movie.srt",
          label: "Portuguese",
          kind: "captions"
        },
        {
          file:
            "https://raw.githubusercontent.com/iPingOi/jwplayer/main/%5BRussian%5D%20Sprite%20Fright%20-%20Blender%20Open%20Movie.srt",
          label: "Russian",
          kind: "captions"
        },
        {
          file:
            "https://raw.githubusercontent.com/iPingOi/jwplayer/main/%5BSpanish%5D%20Sprite%20Fright%20-%20Blender%20Open%20Movie.srt",
          label: "Spanish",
          kind: "captions"
        }
      ],
      tracks: [
        {
          file: "https://cdn.jwplayer.com/strips/iYfADWO1-120.vtt",
          kind: "thumbnails"
        }
      ]
    }
  ],
  advertising: {
    client: "vast",
    schedule: [
      {
        offset: "pre",
        tag:
          ""
      }
    ]
  }
});

playerInstance.on("ready", function () {
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
