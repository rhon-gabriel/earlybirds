class ArticlesController < ApplicationController
  def index
    if params[:category]
      @articles = Article.where(category_id: params[:category])
    else
      @articles = Article.all
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

end
