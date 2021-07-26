class ChannelMessage < ApplicationRecord
  belongs_to :user
  belongs_to :channel, inverse_of: :channel_messages

  def as_json(options)
  	super(options).merge(user_avatar_url: user.gravatar_url)  	
  end
end
