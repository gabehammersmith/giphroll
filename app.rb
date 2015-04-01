require 'thin'
require 'dotenv'
require 'sinatra'
require 'slack-notifier'

Dotenv.load

set :server, :thin
set :bind, '0.0.0.0'

notifier = Slack::Notifier.new ENV['url']

post '/v1' do
	if ENV['tok'] == "#{params[:token]}"
		notifier.channel  = "#{params[:channel_id]}"
		notifier.username = "#{params[:user_name]}"
		rickpic = {
  			fallback: "#{params[:text]}",
  			image_url: ENV['gif'],
  			title: "#{params[:text]}",
        		title_link: ENV['gif'],
			}
		notifier.ping "/giphy #{params[:text]}", icon_url: ENV['ico'], attachments: [rickpic]
		status 200
  		body '' 
  	else
  		status 403
  	end
end
