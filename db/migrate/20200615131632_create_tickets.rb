class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.boolean :completed, :default => false
      t.references :user

      t.timestamps
    end
  end
end
