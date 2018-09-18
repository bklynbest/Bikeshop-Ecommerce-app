class Product < ApplicationRecord
  has_many :orders
  has_many :comments
  validates :name, presence: true

  def highest_rating_comment
    comments.rating_desc.first
  end

  def lowest_rating_comment
    comments.rating_asc.first
  end

  def average_rating
    Rails.cache.fetch([cache_key, __method__], expires_in: 30.minutes) do
    comments.average(:rating).to_f
  end
  end

  def self.search(search_term)
    if Rails.env.development?
      Product.where("name LIKE ?", "%#{search_term}%")
    else
      Product.where("name ilike ?", "%#{search_term}%")
    end
  end

end
