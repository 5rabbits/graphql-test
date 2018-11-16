# Time entry representation
class Types::User < Types::BaseObject
  field :id, ID, null: false
  field :name, String, null: false
end
