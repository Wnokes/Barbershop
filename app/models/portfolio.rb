class Portfolio < ApplicationRecord
	validates_presence_of :title, :description
	
	extend FriendlyId
  	friendly_id :title, use: [:slugged, :finders]
end
