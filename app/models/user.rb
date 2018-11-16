# Users model
class User < ApplicationRecord
  belongs_to :category
  has_many :time_entries
  has_many :projects, through: :time_entries
  has_many :clients, through: :projects
end
