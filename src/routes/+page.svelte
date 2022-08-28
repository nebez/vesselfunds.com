<script lang="ts">
	import Header from '$lib/header/Header.svelte';
</script>

<svelte:head>
	<title>Vessel</title>
	<meta name="description" content="Svelte demo app" />
</svelte:head>

<section class="section-masked">
	<div class="section-background" />
	<div class="section-background-slant" />
	<div class="section-container">
		<div class="section-content section-content-header">
			<Header />
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
</style>
