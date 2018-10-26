// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

const stripeTokenHandler = (token) => {
    debugger;
    let paymentForm = document.getElementById('payment-form')
    let hiddenInput = document.createElement('input')
    hiddenInput.setAttribute('type', 'hidden')
    hiddenInput.setAttribute('name', 'stripe_token');
    hiddenInput.setAttribute('value', token.id);
    paymentForm.appendChild(hiddenInput)

    paymentForm.submit()


}

const initiateStripeForm = () => {
    // get some code from stripe

    // Create a Stripe client.
    let stripe = Stripe('pk_test_nLkFwDiZHqChixZqO09WOOgJ');

    // Create an instance of Elements.
    let elements = stripe.elements();

        // Custom styling can be passed to options when creating an Element.
    // (Note that this demo uses a wider set of styles than the guide below.)
    let style = {
        base: {
            color: '#32325d',
            lineHeight: '18px',
            fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
            fontSmoothing: 'antialiased',
            fontSize: '16px',
            '::placeholder': {
                color: '#aab7c4'
            }
        },
        invalid: {
            color: '#fa755a',
            iconColor: '#fa755a'
        }
    };

    // Create an instance of the card Element.
    let card = elements.create('card', { style: style });

    card.mount('#card-element')
    let paymentForm = document.getElementById('payment-form')
    paymentForm.addEventListener('submit', (event) => {
        event.preventDefault()

        stripe.createToken(card).then(result => {
            debugger;
            stripeTokenHandler(result.token)
        })
    })
}

document.addEventListener('turbolinks:load', () => {
    let textElement = document.getElementById('article_comment')
    let forRevisionButton = document.getElementById('article_status_for_revision')

    if (textElement && forRevisionButton) {
        textElement.disabled = true
        forRevisionButton.addEventListener('click', () => {
            if (forRevisionButton.checked === true) {
                textElement.disabled = false
            }
        })
    }

})

document.addEventListener('turbolinks:load', () => {
    let approvedButton = document.getElementById('article_status_approved')
    let premiumButton = document.getElementById('article_premium_status_premium')
    let freeButton = document.getElementById('article_premium_status_free')
    
    if (approvedButton && premiumButton) {
        premiumButton.disabled = true
        freeButton.disabled = true
        approvedButton.addEventListener('click', () => {
            if (approvedButton.checked === true) {
                premiumButton.disabled = false
                freeButton.disabled = false
            }
        })
    }

    let paymentForm = document.getElementById('payment-form')
    if (paymentForm) {
        initiateStripeForm()
    }
})