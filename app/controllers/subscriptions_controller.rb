class SubscriptionsController < ApplicationController
  layout 'application'

  def new
  end

  def create
    # here, we will insert the stripe charge
    current_user.update_attribute(:subscriber, true)
    redirect_to root_path, notice: "Thank you for registering for a premium subscription."
  end
end
