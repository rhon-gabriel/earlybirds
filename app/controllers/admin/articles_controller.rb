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
    @article = Article.find(params[:id])
    update_status if article_params[:status]
    if @article.approved?
      redirect_to admin_articles_path, notice: 'Article approved for publication'
    elsif @article.rejected?
      redirect_to admin_articles_path, notice: 'Article not approved for publication'
    end
  end

  private

  def update_status
    @article.send([article_params[:status], '!'].join.to_sym)
  end

  def article_params
    params.require(:article).permit(:id, :header, :subheader, :body, :byline, :category_id, :status)
  end
end
