class Place < ActiveRecord::Base
	validates :name, presence: true, length: { in: 3..30 }
	validates :latitude, presence: true
	validates :longitude, presence: true
	validates :hashtags, allow_blank: true, format: {
      :with => /\A(\w+([\s|,]\w)*)*\z/,
      :message => "must contain only alphanumeric words separated by spaces or commas"
    }
end
