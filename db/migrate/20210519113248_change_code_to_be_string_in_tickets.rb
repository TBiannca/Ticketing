class ChangeCodeToBeStringInTickets < ActiveRecord::Migration[6.1]
  def change
    change_column :tickets, :code, :string
  end
end
