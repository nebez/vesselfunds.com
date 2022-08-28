<script lang="ts">
	export let text: string;
	export let style: 'primary' | 'secondary';
    export let href: string;
</script>

<a {href} class={style}>{text}</a>

<style>
	a {
		display: inline-block;
		padding: 13px 30px;
		border-radius: 4px;
		font-size: 15px;
		font-weight: 500;
		text-decoration: none;
		border: 1px solid var(--primary-color);
	}

	a.primary {
		color: var(--pure-white);
		background-color: var(--primary-color);
	}

	a.primary:hover {
		opacity: 0.92;
	}

	a.secondary {
		color: var(--primary-color);
	}

	a.secondary:hover {
		background-color: rgba(128, 128, 128, 0.1);
	}
</style>
