<script>
import ButtonLink from "$lib/ButtonLink.svelte";

</script>
<div class="wrapper">
    <div class="message">
        <div class="left">
            <h1>Join our mission</h1>
            <p>We want exceptional talent. Shoot us an email, attach your resume, and tell us how you think you could help us bring private market investments into the digital world.</p>
        </div>
        <div class="right">
            <ButtonLink href="mailto:thomas@vesselfunds.com?subject=Working at Vessel" style="contact" arrow>Get in touch</ButtonLink>
        </div>
    </div>
</div>

<style>
    .wrapper {
        width: 100%;
        padding: 50px 0;
        background-color: #f1f5f0;
        display: flex;
        justify-content: center;
    }

    .message {
        display: flex;
        justify-content: space-between;
        align-items: center;
        width: 100%;
        max-width: 1206px;
        background: #FFFFFF;
        border-radius: 8px;
        padding: 48px;
        gap: 50px;
        box-shadow: 0px 0px 22px -3px rgba(10, 33, 18, 0.3);
    }

    .message .left {
        flex: 1;
        width: 100%;
        max-width: 730px;
    }

    h1 {
        font-size: 40px;
        font-weight: 500;
    }

    p {
        font-size: 17px;
        font-weight: 450;
        line-height: 175%;
        color: #46434d;
        margin: 0;
        margin-top: 23px;
    }
</style>
