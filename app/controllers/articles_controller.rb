class ArticlesController < ApplicationController
  before_action :load_categories, only: %i[index]

  def index
    @articles = if params[:category]
                  Article.where(category_id: params[:category])
                else
                  Article.all
                end
  end
end
