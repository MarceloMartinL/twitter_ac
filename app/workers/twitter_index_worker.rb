require 'sidekiq-scheduler'

class TwitterIndexWorker
  include Sidekiq::Worker

  def perform
    # client = Twitter::REST::Client.new do |config|
    #   config.consumer_key        = ENV['TWITTER_API_KEY']
    #   config.consumer_secret     = ENV['TWITTER_SECRET_KEY']
    #   config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
    #   config.access_token_secret = ENV['TWITTER_SECRET_TOKEN']
    # end

    # client.search('#chiledesperto').take(3).each do |tweet|
    #   puts tweet.text
    # end
    puts "WALALOOOOOOOOOOOOOOOO"
  end
end
