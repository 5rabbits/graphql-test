# Project model
class Project < ApplicationRecord
  belongs_to :client
  has_many :time_entries
end
