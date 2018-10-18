class Admin::ArticlesController < ApplicationController

def index
    @articles = Article.where(status: 'Pending')
end

end