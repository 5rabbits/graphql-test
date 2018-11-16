# Time entry representation
class Types::TimeEntry < Types::BaseObject
  field :id, ID, null: false
  field :description, String, null: false
end
