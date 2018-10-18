class ArticlesController < ApplicationController
  def index
    if params[:category]
      @articles = Article.where(category_id: params[:category])
    else
      @articles = Article.all
    end
  end


  def new
    @article = Article.new
  end  

  def create
      # @category = Category.find(params[:category_id])
      @article = Article.create(article_params)
      if @article.persisted? 
        redirect_to articles_path, flash[:notice] =  "Your article was successfully saved"
      else
        redirect_to new_article_path, flash[:error] =  "Your article could not be saved"
      end
  end

  

  private
  def article_params
    params.require(:article).permit(:header, :subheader, :body)
  end
end
