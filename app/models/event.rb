class Event < ActiveRecord::Base

  geocoded_by :address
  def address
    [address_line1, address_line2, city, state, zip, country].compact.join(', ')
  end

  validates :name, 
    presence: true,
    length: {minimum: 3, maximum: 50}
  validates :description, 
    presence: true,
    length: {minimum: 3, maximum: 5000}
  validates :start_date, 
    presence: true
  validates :end_date, 
    presence: true
  validates :city, 
    presence: true,
    length: {minimum: 3, maximum: 50}
  validates :state, 
    presence: true,
    length: {minimum: 2, maximum: 30}
  validates :user_id, 
    presence: true

  belongs_to :user
  has_one :users

  has_many :tags, through: :taggings

  after_validation :geocode, :if => :address_changed?  

  def address_changed?
  	address_line1_changed? || address_line2_changed? || city_changed? || state_changed? || zip_changed? || country_changed?
  end
end
