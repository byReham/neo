class Product < ApplicationRecord
  validates :category,    presence: true
  validates :rubric,      presence: true
  validates :name,        presence: true
  #validates :price,       presence: true
  #validates :min_order,   presence: true
  validates :description, presence: true
  validates :image,       presence: true
  #validates :vendor_code, presence: true
  
  self.per_page=20
  
end
