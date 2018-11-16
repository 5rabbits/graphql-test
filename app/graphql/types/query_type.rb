module Types
  class QueryType < Types::BaseObject
    field :time_entry, Types::TimeEntry, null: true do
      description 'find a time entry'
      argument :id, ID, required: true
    end

    # Then provide an implementation:
    def time_entry(id:)
      ::TimeEntry.find_by(id: id)
    end
  end
end
