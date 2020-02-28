require 'sidekiq-scheduler'

class TwitterIndexWorker
  include Sidekiq::Worker

  def perform
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_API_KEY']
      config.consumer_secret     = ENV['TWITTER_SECRET_KEY']
      config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
      config.access_token_secret = ENV['TWITTER_SECRET_TOKEN']
    end
    tweets = client.search('#chiledesperto OR #chilequierecambios', include_entities: true).take(50).map { |tweet| tweet.full_text }
    ActionCable.server.broadcast 'twitter_channel', tweets: tweets
  end
end
