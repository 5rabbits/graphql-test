# User categories
class Category < ApplicationRecord
  has_many :users
  has_many :time_entries, through: :users
  has_many :projects, through: :time_entries
  has_many :clients, through: :projects
end
