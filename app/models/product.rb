class Product < ApplicationRecord
  validates :name,    presence: true
  validates :price,   presence: true
  validates :image,   presence: true
  validates :details, presence: true
  
  self.per_page=20
  
end
