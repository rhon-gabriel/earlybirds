class ApiNewsController < ApplicationController
  
  def index
    @apigeneral = FeedService.get_articles('general', 5, 'us')
    @apibusiness = FeedService.get_articles('business', 5, 'us')
    @apipolitics = FeedService.get_articles('politics', 5, 'us')
    @apisports = FeedService.get_articles('sports', 5, 'us')
    @apisweden = FeedService.get_articles('general', 5, 'se')
  end

end
