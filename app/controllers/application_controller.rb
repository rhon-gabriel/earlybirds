class ApplicationController < ActionController::Base
  def load_categories
    @categories = Category.all
  end
end
