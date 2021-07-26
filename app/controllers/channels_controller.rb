class ChannelsController < ApplicationController
  # @channels = all channels
  # @channel = current channel when applicable
  before_action :load_entities

  def index
    @channels = Channel.all
  end

  def new
    @channel = Channel.new
  end

  def create
    @channel = Channel.new(permitted_parameters)

    if @channel.save
      flash[:success] = "Channel #{@channel.name} was created successfully"
      redirect_to channels_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @channel.update_attributes(permitted_parameters)
      flash[:success] = "Channel #{@channel.name} was updated successfully"
      redirect_to channels_path
    else
      render :new
    end
  end

  def show
    @channel_message = ChannelMessage.new(channel: @channel)
    @channel_messages = @channel.channel_messages.includes(:user)
  end

  protected

  def load_entities
    @channels = Channel.all
    @channel = Channel.find(params[:id]) if params[:id]
  end

  def permitted_parameters
    params.require(:channel).permit(:name)
  end
end
