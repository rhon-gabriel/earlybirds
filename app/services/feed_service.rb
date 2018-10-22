require 'news-api'
require 'json'

module FeedService
  
  def self.get_articles(query, category, pagesize)
    newsapi = News.new(Rails.application.credentials.api[:api_key])
    top_headlines = newsapi.get_top_headlines(q: query,
                                              category: category,
                                              pageSize: pagesize,
                                              country: 'us',
                                              language: 'en')                    
    end
end