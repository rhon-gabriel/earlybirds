# frozen_string_literal: true

class Admin::DashboardController < Admin::AdminController
  def index
    @articles = Article.where.not(status: 0)
  end
end