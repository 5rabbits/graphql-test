# TimeEntry model
class TimeEntry < ApplicationRecord
  belongs_to :project
  belongs_to :user
  delegate :client, to: :project
end
