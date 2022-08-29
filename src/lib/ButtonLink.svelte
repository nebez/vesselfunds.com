<script lang="ts">
    export let style: 'primary' | 'transparent' | 'subscribe' | 'contact';
    export let href: string | undefined = undefined;
    export let arrow: boolean = false;
    export let type: string = 'button';

    $: elementType = href && href.length > 0 ? 'a' : 'button';
    $: buttonProps = {
        type: elementType === 'button' ? type : undefined,
        href: elementType === 'a' ? href : undefined,
        class: [style, 'button'].join(' ')
    };
</script>

<svelte:element this={elementType} {...buttonProps}
    ><slot />
    <svg
        class="hover-arrow"
        class:visible={arrow}
        width="11"
        height="11"
        viewBox="0 0 10 10"
        aria-hidden="true"
    >
        <g fill-rule="evenodd">
            <path class="hover-arrow-line-path" d="M0 5h7" />
            <path class="hover-arrow-tip-path" d="M1 1l4 4-4 4" />
        </g>
    </svg>
</svelte:element>

<style>
    .button {
        cursor: pointer;
        display: inline-block;
        padding: 13px 30px;
        border-radius: 4px;
        font-size: 15px;
        font-weight: 500;
        text-decoration: none;
        border: 1px solid var(--primary-color);
        background: none;
    }

    .button.primary {
        color: var(--pure-white);
        background-color: var(--primary-color);
    }

    .button.primary:hover {
        opacity: 0.92;
    }

    .button.contact {
        color: var(--primary-color);
        background-color: #bfdccd;
        border-color: #bfdccd;
    }

    .button.contact:hover {
        opacity: 0.92;
    }

    .button.transparent {
        color: var(--primary-color);
    }

    .button.transparent:hover {
        background-color: rgba(128, 128, 128, 0.1);
    }

    .button.subscribe {
        color: var(--pure-white);
        background-color: #4ec977;
        border-color: #4ec977;
    }

    .button.subscribe:hover {
        opacity: 0.85;
    }

    .hover-arrow {
        display: none;
        --arrow-spacing: 5px;
        --arrow-hover-transition: 150ms cubic-bezier(0.215, 0.61, 0.355, 1);
        --arrow-hover-offset: translateX(3px);
        --arrow-tip-transform: none;
        --arrow-line-opacity: 0;
        position: relative;
        top: 1px;
        margin-left: var(--arrow-spacing);
        stroke-width: 2px;
        fill: none;
        stroke: currentColor;
    }

    .hover-arrow.visible {
        display: inline;
    }

    .hover-arrow-line-path {
        opacity: var(--arrow-line-opacity);
        transition: opacity var(--hoverTransition, var(--arrow-hover-transition));
    }

    .hover-arrow-tip-path {
        transform: var(--arrow-tip-transform);
        transition: transform var(--hoverTransition, var(--arrow-hover-transition));
    }

    .button:hover .hover-arrow-line-path {
        --arrow-line-opacity: 1;
    }

    .button:hover .hover-arrow-tip-path {
        --arrow-tip-transform: var(--arrow-hover-offset);
    }
</style>
