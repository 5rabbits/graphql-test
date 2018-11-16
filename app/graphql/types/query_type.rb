module Types
  class QueryType < Types::BaseObject
    field :time_entry, Types::TimeEntry, null: true do
      description 'find a time entry'
      argument :id, ID, required: true
    end

    field :time_entries, [Types::TimeEntry], null: true do
      description 'all time entries'
    end

    def time_entries
      ::TimeEntry.all
    end

    # Then provide an implementation:
    def time_entry(id:)
      ::TimeEntry.find_by(id: id)
    end
  end
end
