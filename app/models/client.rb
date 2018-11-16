# Client model
class Client < ApplicationRecord
  has_many :projects
  has_many :time_entries, through: :projects
end
