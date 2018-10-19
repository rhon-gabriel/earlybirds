class ArticlesController < ApplicationController
before_action :load_categories, only: [:index, :show, :new, :create]

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
      @article = Article.create(article_params)
      if @article.persisted? 
        redirect_to root_path, flash[:notice] =  "Your article was successfully saved"
      else
        flash[:error] = "Fields can't be blank. Your article could not be saved"
        render :new      
      end
  end



  private
  def article_params
    params.require(:article).permit(:header, :subheader, :body, :byline, :category_id)
  end
end
