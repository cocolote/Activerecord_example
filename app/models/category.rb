class Category < ActiveRecord::Base
  has_many :books
  has_many :categories, through: :categorizations
  has_many :categorizations
end
