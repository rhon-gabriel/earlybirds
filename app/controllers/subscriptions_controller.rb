class SubscriptionsController < ApplicationController
  layout 'application'

  def new
  end

  def create
    customer = Stripe::Customer.create(
      email: current_user.email,
      source: params[:stripe_token]
    )
    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: 50000,
      description: 'EarlyBird News subscription',
      currency: 'sek'
    )
    
    if charge[:paid]
      current_user.update_attribute(:subscriber, true)
      redirect_to root_path, notice: "Thank you for registering for a premium subscription."
    end
  rescue Stripe::CardError => error
    redirect_to new_subscription_path, notice: error.message    
  end
end
