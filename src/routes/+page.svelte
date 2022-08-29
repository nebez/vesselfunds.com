<script lang="ts">
    import Header from '$lib/Header/Header.svelte';
    import Footer from '$lib/Footer/Footer.svelte';
    import SubscribeBanner from '$lib/Subscribe/Banner.svelte';
</script>

<svelte:head>
    <title>Vessel</title>
    <meta name="description" content="Investing in Private Equity and Venture Capital -- for everyone." />
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
                <div class="intro-text">
                    <h1>Access exclusive funds</h1>
                    <p>
                        As an individual investor, top tier private equity funds are difficult to
                        access. Our team of investment professionals does the research and makes
                        large commitments to these funds making it possible for smaller commitments
                        to lorem ipsum lorem ipsum lorem ipsum.
                    </p>
                </div>

                <div class="intro-img">
                    <img src="/img/fund-preview.svg" alt="Preview of funds on Vessel" />
                </div>
            </section>
        </div>
    </div>
</section>

<section class="section-masked">
    <div class="section-container">
        <div class="section-content section-content-works">
            <section class="split">
                <div class="intro-img">
                    <img src="/img/how-it-works.png" width="613" alt="How funds are structured" />
                </div>

                <div class="intro-text">
                    <h1>How it works</h1>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat.
                    </p>
                </div>
            </section>
        </div>
    </div>
</section>

<section class="section-masked">
    <div class="section-background-slant">
        <div class="mark-container"><div class="mark-top-right" /></div>
    </div>
    <div class="section-container">
        <div class="section-content section-content-subscribe">
            <section class="split">
                <div class="intro-text">
                    <h1>Subscribe in minutes</h1>
                    <p>
                        For the digital investor, Vessel makes the subscription process simple,
                        transparent, and digital. No more faxing documents or requiring
                        pen-and-paper signatures in person. Create your investor profile in minutes,
                        use your camera for digital verification, and sign subscription documents
                        electronically.
                    </p>
                </div>

                <div class="intro-img">
                    <img src="/img/invest.png" width="595" alt="Preview of investment page" />
                </div>
            </section>
        </div>
    </div>
</section>

<section class="subscribe" id="subscribe">
    <SubscribeBanner />
</section>

<footer>
    <Footer />
</footer>

<style>
    .section-masked {
        position: relative;
        --alternate-background-color: #f1f5f0;
    }

    .section-background,
    .section-background-slant {
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
        position: relative;
    }

    .mark-bottom-left {
        width: 20vw;
        height: 42px;
        position: absolute;
        bottom: -21px;
        left: 0;
        background-color: var(--primary-color);
        opacity: 0.65;
    }

    .mark-top-right {
        width: 20vw;
        height: 42px;
        position: absolute;
        top: -21px;
        right: 0;
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
        padding: 30px 0;
    }

    .section-content-works {
        padding-top: 145px;
    }

    .section-content-subscribe {
        padding: 80px 0 140px;
    }

    .split {
        display: flex;
        margin-top: 115px;
        justify-content: space-between;
        align-items: flex-start;
        gap: 85px;
    }

    @media (max-width: 800px) {
        .split {
            flex-direction: column;
            gap: 40px;
            margin-top: 50px;
        }

        .section-content-works {
            padding-top: 70px;
        }

        .section-content-works .split {
            flex-direction: column-reverse;
        }
    }

    .intro-img {
        position: relative;
        width: 100%;
    }

    .intro-img img {
        display: block;
        max-width: 100%;
        height: auto;
        filter: drop-shadow(0px 9px 13px rgb(10 33 18 / 20%));
    }

    .section-content-header .intro-img img {
        position: absolute;
    }

    @media (max-width: 800px) {
        .section-content-header .intro-img img {
            position: relative;
            margin: 0 auto -100px;
        }
        .intro-img img {
            margin: 0 auto;
            padding: 0 25px;
        }
    }

    .intro-text {
        width: 100%;
        max-width: 490px;
    }

    @media (max-width: 800px) {
        .intro-text {
            width: 100%;
            max-width: 100%;
        }
    }

    .intro-text h1 {
        font-size: 40px;
        font-weight: 500;
    }

    .intro-text p {
        font-size: 17px;
        font-weight: 450;
        line-height: 175%;
        color: #46434d;
        margin: 0;
        margin-top: 23px;
    }

    .subscribe {
        position: relative;
        z-index: 1;
        max-width: 880px;
        width: 100%;
        margin: 0 auto;
        top: -35px;
    }

    footer {
        margin-top: 120px;
    }
</style>
