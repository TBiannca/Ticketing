class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :email
      t.string :event
      t.string :code

      t.timestamps
    end
  end
end
