# frozen_string_literal: true

class Admin::ArticlesController < Admin::AdminController
  before_action :load_categories, only: %i[new create]

  def index
    @articles = Article.pending
  end

  def new; end

  def create
    @article = Article.create(article_params)
    if @article.persisted?
      redirect_to root_path,  notice:  "Your article was successfully saved in #{@article.category.name} section"
    else
      flash[:error] = "Fields can't be blank. Your article could not be saved"
      render :new
    end
  end

  def update
    @article = Article.find(article_params)
    @article.send([params[:status], '!'].join.to_sym)
    binding.pry
    if params[:article][:status] == :approved
      notice "Article approved for publication"
    else
      notice "Article not approved for publication"
    end
  end

  private

  def article_params
    params.require(:article).permit(:header, :subheader, :body, :byline, :category_id, :status)
  end
end
