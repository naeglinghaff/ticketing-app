class AddPriorityToTicketModel < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :priority, :integer, default: 0
  end
end
