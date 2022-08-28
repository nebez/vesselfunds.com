<script lang="ts">
    import Header from '$lib/header/Header.svelte';
</script>

<svelte:head>
    <title>Vessel</title>
    <meta name="description" content="Svelte demo app" />
</svelte:head>

<section class="section-masked">
    <div class="section-background" />
    <div class="section-background-slant">
        <div class="mark-container"><div class="mark-bottom-left" /></div>
    </div>
    <div class="section-container">
        <div class="section-content section-content-header">
            <Header />

            <section class="split">
                <div class="intro">
                    <h1>Access exclusive funds</h1>
                    <p>As an individual investor, top tier private equity funds are difficult to access. Our team of investment professionals does the research and makes large commitments to these funds making it possible for smaller commitments to lorem ipsum lorem ipsum lorem ipsum.</p>
                </div>

                <div class="intro-img">
                    <img src="/img/fund-preview.svg" alt="Preview of funds on Vessel">
                </div>
            </section>
        </div>
    </div>
</section>

<style>
    .section-masked {
        position: relative;
        --alternate-background-color: #F1F5F0;
    }

    .section-background, .section-background-slant {
        position: absolute;
        background-color: var(--alternate-background-color);
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
    }

    .section-background-slant {
        transform-origin: 100% 0;
        transform: skewY(-3.5deg);
    }

    .mark-container {
        height: 100%;
        width: 100%;
        max-width: 1206px;
        margin: 0 auto;
        position: relative;
    }

    .mark-bottom-left {
        width: 100%;
        height: 42px;
        position: absolute;
        bottom: -21px;
        left: 80px;
        transform: translateX(-100%);
        background-color: var(--primary-color);
        opacity: 0.65;
    }

    .section-container {
        position: relative;
        z-index: 1;
        display: flex;
        justify-content: center;
    }

    .section-content {
        width: 100%;
        max-width: 1206px;
        margin: 0 25px;
    }

    .section-content-header {
        padding: 45px 0;
    }

    .intro {
        width: 100%;
        max-width: 490px;
        margin-top: 115px;
    }

    h1 {
        font-size: 40px;
        font-weight: 500;
    }

    p {
        font-size: 17px;
        font-weight: 450;
        line-height: 175%;
        color: #46434D;
        margin: 0;
        margin-top: 23px;
    }
</style>
