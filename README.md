The application uses the RVM for managing the Ruby versions. 

i)		After pulling the repo. It assumes that you are using the ruby version 2.6.2, or else please switch to that version
ii)		Use the command: bundle install (For installing all the dependencies in the Gemfile)
iii) 	On one instance of the terminal open the redis server using the command: redis-server (Assuming the redis is already installed)
iv)		Then after the dependencies are installed and Gemfile.lock is generated, start the server using the command: rails s
v) 		The application uses devise for authentication and uses the Action Cable for transmitting the messages

The rails-chat has two primary models: Channel and ChannelMessage
The channel stores the channel name is has many channel_messages
A channel_message belongs_to a channel
The authenticated user has the ability to send messages across different channels and can create a channel