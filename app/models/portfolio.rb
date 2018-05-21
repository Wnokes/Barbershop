class Portfolio < ApplicationRecord
	validates_presence_of :title, :description

	mount_uploader :thumbnail_image, ImageUploader
	mount_uploader :main_image, ImageUploader

	extend FriendlyId
  	friendly_id :title, use: [:slugged, :finders]
end
