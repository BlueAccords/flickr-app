class StaticPagesController < ApplicationController
	require 'flickraw'


FlickRaw.api_key= Rails.application.secrets[:flickr_key]
FlickRaw.shared_secret= Rails.application.secrets[:flickr_secret]

# token = flickr.get_request_token
# auth_url = flickr.get_authorize_url(token['oauth_token'], :perms => 'delete')

# puts "open this url to continue : #{auth_url}"
# puts "Copy here the given number afterwards"
# verify = gets.strip


#id is from http://idgettr.com/ + your flickr username/link



	def index
		id = '133449656@N08'
		@info = flickr.photos.search(:user_id => id)
	end
end
