
class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.name
      t.belongs_to :category
      t.timestamps
    end
  end
end