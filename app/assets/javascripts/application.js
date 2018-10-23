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
})