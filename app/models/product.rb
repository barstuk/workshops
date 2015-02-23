class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates_presence_of :title, :description, :price

  validates_format_of :price, :with => /\A\d+(\.\d{1,2})?\z/, :on => :create


  def average_rating
    return reviews.pluck(:rating).reduce(:+) / reviews.size.to_f if reviews.any?
    0
  end

  def owner(user)
    return true if self.user == user
    false
  end


end
