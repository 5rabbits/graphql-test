class CreateTimeEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :time_entries do |t|
      t.belongs_to :user
      t.belongs_to :project
      t.date :date
      t.text :description
      t.decimal :duration
      t.timestamps
    end
  end
end
