# User categories
class Category < ApplicationRecord
  has_many :users
  has_many :time_entries, through: :users
end
