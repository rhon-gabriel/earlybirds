class ArticlesController < ApplicationController
  def index
    if params[:category]
      @articles = Article.where(category_id: params[:category])
    else
      @articles = Article.all
    end


  def create
      @category = Category.find(params[:category_id])
      @article = @category.article.create(article_params)
  end

  private
  def article_params
    params.require(:article).permit(:header, :subheader, :body)
  end
end
