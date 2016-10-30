class Event < ActiveRecord::Base

  geocoded_by :address

  def address
    [street_line1, city, state, zip, country].compact.join(', ')
  end

  belongs_to :user

  after_validation :geocode, :if => :address_changed?  

  def address_changed?
  	street_line1_changed? || city_changed? || state_changed? || zip_changed? || country_changed?
  end
end
