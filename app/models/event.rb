class Event < ActiveRecord::Base

  geocoded_by :address
  def address
    [street_line1, city, state, zip, country].compact.join(', ')
  end

  validates :name, 
    presence: true,
    length: {minimum: 3, maximum: 50}
  validates :description, 
    presence: true,
    length: {minimum: 3, maximum: 300}
  validates :start_date, 
    presence: true
  validates :end_date, 
    presence: true
  validates :city, 
    presence: true,
    length: {minimum: 3, maximum: 50}
  validates :state, 
    presence: true,
    length: {minimum: 3, maximum: 30}
    # add set options??
  validates :user_id, 
    presence: true

  belongs_to :user
  has_one :users

  has_many :tags, through: :taggings

  after_validation :geocode, :if => :address_changed?  

  def address_changed?
  	street_line1_changed? || city_changed? || state_changed? || zip_changed? || country_changed?
  end
end
