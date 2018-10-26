# frozen_string_literal: true

class Admin::DashboardController < Admin::AdminController
  layout 'admin_dashboard'
  def index
    @articles = Article.where.not(status: :pending)
  end
end