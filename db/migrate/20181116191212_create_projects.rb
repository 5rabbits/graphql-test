class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.belongs_to :client
      t.timestamps
    end
  end
end
