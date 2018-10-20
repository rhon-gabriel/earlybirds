require 'open-uri'

    url = 'https://newsapi.org/v2/top-headlines?'\
        'country=us&'\
        'apiKey=65b75552e6a541f59eba896fa91e2386'
    req = open(url)
    response_body = req.read
    puts response_body