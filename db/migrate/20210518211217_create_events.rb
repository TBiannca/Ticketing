class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.string :location
      t.integer :seats

      t.timestamps
    end
  end
end
