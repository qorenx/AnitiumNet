<div class="content" style="display: flex; justify-content: space-around; align-items: center;">
    <span style="padding: 10px; font-size: 18px;">
        <a class="animated-link" style="text-decoration: none; color: #333;" href="<?= base_url("admin/episode/editing?uid=$embedUID&eps=$embedID") ?>">
            EPİSODE
            <i class="fa fa-cog fa-spin custom-icon" style="margin-left: 5px;"></i>
        </a>
    </span>
    <span style="padding: 10px; font-size: 18px;">
        <a class="animated-link" style="text-decoration: none; color: #333;" href="<?= base_url("admin/episode/embed-editing?uid=$embedUID&eps=$embedID") ?>">
            EMBED
            <i class="fa fa-cog fa-spin custom-icon" style="margin-left: 5px;"></i>
        </a>
    </span>
</div>
<style>
    @keyframes changingColor {
        50% {
            color: blue;
        }

        100% {
            color: red;
        }
    }

    .animated-link {
        animation: changingColor 20s linear infinite;
    }

    .animated-link:hover {
        color: red;
        text-shadow: 0px 0px 5px rgba(255, 0, 0, 0.5);
    }

    .custom-icon {
        margin-left: 5px;
        animation: rotateIcon 20s linear infinite;
    }

    @keyframes rotateIcon {
        0% {
            transform: rotate(0deg);
        }

        100% {
            transform: rotate(360deg);
        }
    }
</style>