# frozen_string_literal: true

class Admin::ArticlesController < Admin::AdminController
  before_action :load_categories, only: %i[new create edit]

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
    update_premium_status if article_params[:premium_status]
    if @article.approved? && @article.free?
      redirect_to admin_articles_path, notice: 'Article approved for publication'
    elsif @article.approved? && @article.premium?
      redirect_to admin_articles_path, notice: 'Premium article approved for publication'  
    elsif @article.rejected?
      redirect_to admin_articles_path, notice: 'Article not approved for publication'
    elsif @article.for_revision? && URI(request.referer).path == admin_articles_path
      @article.update_attribute(:comment, article_params[:comment])
      redirect_to admin_articles_path, notice: "Article not approved for publication, please see comments: #{@article.comment}"
    elsif @article.for_revision? && URI(request.referer).path == edit_admin_article_path
      @article.update(article_params)
      @article.update_attribute(:status, :pending)
      redirect_to admin_root_path, notice: "Your article was successfully re-submitted"
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  private

  def update_status
    @article.send([article_params[:status], '!'].join.to_sym)
  end

  def update_premium_status
    @article.send([article_params[:premium_status], '!'].join.to_sym)
  end

  def article_params
    params.require(:article).permit(:id, :header, :subheader, :body, :byline, :category_id, :status, :comment, :premium_status)
  end
end
