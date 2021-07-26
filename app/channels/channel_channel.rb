class ChannelChannel < ApplicationCable::Channel
  def subscribed
    channel = Channel.find params[:channel_id]
    stream_from "channel_#{params[:channel]}"
  end
end