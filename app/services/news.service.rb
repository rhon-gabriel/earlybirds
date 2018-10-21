require 'rest-client'

module FetchNewsService
        headers = {'Content-Type': 'application/json', 'x-api-key': Rails.application.credentials.api[:api_key] }
        url = "https://newsapi.org/v2/top-headlines?country=us"
        JSON.parse(RestClient.get(url, headers).body)
end