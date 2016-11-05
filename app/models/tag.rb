class Tag < ActiveRecord::Base
	validates :name, 
	  #presense: true,
	  length: {minimum: 1, maximum: 30}

	has_many :events, through: :taggings
end
