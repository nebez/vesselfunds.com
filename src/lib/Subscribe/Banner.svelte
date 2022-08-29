<script lang="ts">
    import ButtonLink from '$lib/ButtonLink.svelte';

    let emailInput: string = '';
</script>

<div class="banner">
    <h2>Request early access</h2>

    <p>
        Interested in trying out Vessel? Sign up for our mailing list, and you'll be one of the
        first to receive product updates by email and notifications of future closed beta openings.
    </p>

    <form method="POST" class="subscription-form" action="https://vesselfunds.us14.list-manage.com/subscribe/post?u=9ab940ea9e40956ea045d7208&amp;id=7857c803b3&amp;f_id=00cbf3e0f0">
        <div class="email-input">
            <label for="subscriber-email" class={emailInput.length > 0 ? 'above' : ''}>Email</label>
            <input
                type="email"
                name="EMAIL"
                id="subscriber-email"
                bind:value={emailInput}
            />
        </div>
        <div class="email-submit">
            <ButtonLink type="submit" style="subscribe" arrow>Sign up</ButtonLink>
        </div>
    </form>
</div>

<style>
    .banner {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 30px 170px;
        margin: 0 25px;
        gap: 30px;
        border-radius: 8px;
        background-color: var(--primary-color);
    }

@media (max-width: 1024px) {
    .banner {
        padding: 30px 130px;
    }
}


@media (max-width: 768px) {
        .banner {
            padding: 30px 70px;
        }
    }


    @media (max-width: 425px) {
        .banner {
            padding: 30px 30px;
        }
    }

    h2 {
        text-align: center;
        font-size: 40px;
        font-weight: 500;
        color: var(--pure-white);
    }

    p {
        font-size: 17px;
        font-weight: 450;
        line-height: 175%;
        color: #d7eee2;
        margin: 0;
        text-align: center;
    }

    .subscription-form {
        display: flex;
        flex-direction: row;
        justify-content: center;
        align-items: center;
        padding: 10px;
        gap: 15px;

        border: 1px solid #19813c;
        border-radius: 5px;
    }

    @media (max-width: 660px) {
        .subscription-form {
            flex-direction: column;
        }
    }

    .email-input {
        position: relative;
    }

    .email-input label {
        position: absolute;
        font-weight: 500;
        font-size: 14px;
        line-height: 17px;
        left: 16px;
        top: 16px;
        color: #95929b;
        pointer-events: none;

        transition: all 120ms ease;
    }

    .email-input label.above {
        top: 2px;
        font-size: 10px;
        font-weight: 400;
    }

    .email-input input {
        display: block;
        width: 265px;
        max-width: 100%;
        height: 100%;
        border: 1px solid #bbbbbb;
        border-radius: 6px;
        margin: 0;
        padding: 15px;

        font-weight: 500;
        font-size: 14px;
        line-height: 17px;
        color: #312f36;
    }

    .email-input input:focus {
        outline: none;
    }

    .email-submit button {
        display: block;
        padding: 13px 30px;
        background: #4ec977;
        border: 1px solid #4ec977;
        border-radius: 4px;

        font-weight: 500;
        font-size: 15px;
        line-height: 22px;
        color: #ffffff;
    }
</style>
