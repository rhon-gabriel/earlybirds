require 'coveralls'
Coveralls.wear_merged!('rails')
require 'cucumber/rails'
require 'webmock/cucumber'

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation
WebMock.allow_net_connect!

chrome_options = %w(no-sandbox disable-popup-blocking disable-infobars window-size=1900,1400)
# Use auto-open-devtools-for-tabs to open dev tools if you want to use a debugger

Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
      args: chrome_options
  )
  Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      options: options
  )
end
Capybara.javascript_driver = :selenium
Capybara.server = :puma

World(FactoryBot::Syntax::Methods)

Before '@api_call_news' do 
  stub_request(:get, "https://newsapi.org/v2/top-headlines?category=general&country=us&language=en&pageSize=5" ).
  with(
    headers: {
      'Accept'=>'*/*',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'Host'=>'newsapi.org',
      'User-Agent'=>'Ruby',
      'X-Api-Key'=>Rails.application.credentials.api[:api_key]
    }).
  to_return(status: 200, body: Rails.root.join('features', 'support', 'fixtures', 'api_response_general.txt').read, headers: {})
end

Before '@api_call_politics' do 
  stub_request(:get, "https://newsapi.org/v2/top-headlines?category=politics&country=us&language=en&pageSize=5").
  with(
    headers: {
      'Accept'=>'*/*',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'Host'=>'newsapi.org',
      'User-Agent'=>'Ruby',
      'X-Api-Key'=>Rails.application.credentials.api[:api_key]
    }).
  to_return(status: 200, body: Rails.root.join('features', 'support', 'fixtures', 'api_response_politics.txt').read, headers: {})
end