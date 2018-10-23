require 'news-api'
require 'json'

module FeedService
  
  def self.get_articles(category, pagesize, country)
    newsapi = News.new(Rails.application.credentials.api[:api_key])
    top_headlines = newsapi.get_top_headlines(category: category,
                                              pageSize: pagesize,
                                              country: country,
                                              language: 'en')              
    end
end