<script>
    import Logo from '$lib/Logo/Logo.svelte';
    import Wordmark from '$lib/Logo/Wordmark.svelte';
    import ButtonLink from '$lib/ButtonLink.svelte';
</script>

<header>
    <div class="logo">
        <div class="svg-logo"><Logo /></div>
        <div class="svg-wordmark"><Wordmark /></div>
    </div>

    <nav>
        <ButtonLink style="transparent">Sign in</ButtonLink>
        <ButtonLink style="primary" href="#subscribe">Request early access</ButtonLink>
    </nav>
</header>

<style>
    header {
        display: flex;
        justify-content: space-between;
        align-items: center;
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
</style>
