module FlickrHelper
	FlickRaw.api_key= Rails.application.secrets[:flickr_key]
	FlickRaw.shared_secret= Rails.application.secrets[:flickr_secret]
	
	def user_photos(user_id, photo_count = 12)
		