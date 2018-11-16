# Users model
class User < ApplicationRecord
  has_many :time_entries
end
