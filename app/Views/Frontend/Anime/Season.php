<section id="block_area-seasons" class="block_area block_area-seasons"></section>
<script>
    document.addEventListener("DOMContentLoaded", async () => {
        try {
            const response = await fetch(`/ajax/getanimeseason/<?= $AnimeData['uid'] ?>`);
            const data = await response.json();
            document.getElementById("block_area-seasons").innerHTML = data['html'];
        } catch (error) {
            console.error('Error:', error);
        }
    });
</script>