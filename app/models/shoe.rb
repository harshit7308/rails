class Shoe < ApplicationRecord
  paginates_per 50
  has_one_attached :image
  belongs_to :color
  belongs_to :brand
  belongs_to :category

end
