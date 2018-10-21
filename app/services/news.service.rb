# require 'open-uri'

    # url = 'https://newsapi.org/v2/top-headlines?'\
    #     'country=us&'\
    #     'apiKey=65b75552e6a541f59eba896fa91e2386'
#     req = open(url)
#     response_body = req.read
#     puts response_body
require 'rest-client'

module FetchNewsService
    def self.get_news
        headers = {'Content-Type': 'application/json', 'x-api-key': Rails.application.credentials.api[:api_key] }
        url = "https://newsapi.org/v2/top-headlines?country=us"
        JSON.parse(RestClient.get(url, headers).body)
    end
end