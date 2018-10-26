Then("I fill in the stripe form") do
    stripe_iframe = find("iframe[name='__privateStripeFrame4']")
    within_frame(stripe_iframe) do
        find_field('cardnumber').send_keys('4242424242424242')
        find_field('exp-date').send_keys('1221')
        find_field('cvc').send_keys('123')
        find_field('postal').send_keys('11310')
    end
end