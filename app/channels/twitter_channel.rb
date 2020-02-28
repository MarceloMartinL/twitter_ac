class TwitterChannel < ApplicationCable::Channel
  def subscribed
   	stream_from "twitter_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
