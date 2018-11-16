class CreateTimeEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :time_entries do |t|
      t.decimal :duration
      t.text :description
      t.belongs_to :project
      t.belongs_to :user
      t.timestamps
    end
  end
end
