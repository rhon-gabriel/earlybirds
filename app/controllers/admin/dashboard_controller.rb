# frozen_string_literal: true

class Admin::DashboardController < Admin::AdminController
  def index
    @articles = Article.approved
  end
end