<script lang="ts">
    import Logo from '$lib/Logo/Logo.svelte';
    import Wordmark from '$lib/Logo/Wordmark.svelte';
    import ButtonLink from '$lib/ButtonLink.svelte';

    const scrollIntoView = (e: Event) => {
        if (!(e.target instanceof HTMLElement)) return;

        const el = document.querySelector(e.target.getAttribute('href') ?? 'dont-find-anything');

        if (!el) return;
        e.preventDefault();

        el.scrollIntoView({ behavior: 'smooth' });
    }
</script>

<header>
    <div class="logo">
        <div class="svg-logo"><Logo /></div>
        <div class="svg-wordmark"><Wordmark /></div>
    </div>

    <nav>
        <ButtonLink style="transparent">Sign in</ButtonLink>
        <ButtonLink style="primary" href="#subscribe" on:click={scrollIntoView}>Request early access</ButtonLink>
    </nav>
</header>

<style>
    header {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    @media (max-width: 425px) {
        header {
            justify-content: center;
        }
    }

    .logo {
        display: flex;
        flex-direction: row;
        align-items: center;
        padding: 0px;
        gap: 20px;
    }

    .logo .svg-logo {
        width: 49px;
    }

    .logo .svg-wordmark {
        width: 136px;
    }

    nav {
        display: flex;
        flex-direction: row;
        gap: 20px;
    }

    @media (max-width: 768px) {
        nav {
            display: none;
        }
    }
</style>
