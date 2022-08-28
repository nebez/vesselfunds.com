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
		<ButtonLink text="Sign in" style="secondary" href="#123" />
		<ButtonLink text="Request early access" style="primary" href="#456" />
	</nav>
</header>

<style>
	/* #F1F5F0 section bg color */
	/* 3.5deg turn */
	/* 1206px max width */
	/* section {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		flex: 1;
	} */

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
