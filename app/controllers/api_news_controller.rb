class ApiNewsController < ApplicationController
  
  def index
    @apigeneral = FeedService.get_articles('general', 5)
    @apibusiness = FeedService.get_articles('business', 5)
    @apipolitics = FeedService.get_articles('politics', 5)
    @apisports = FeedService.get_articles('sports', 5)
  end

end
