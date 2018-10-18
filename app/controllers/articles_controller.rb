class ArticlesController < ApplicationController
  def index
    if params[:category]
      @articles = Article.where(category_id: params[:category])
    else
      @articles = Article.all
    end
  end
end
