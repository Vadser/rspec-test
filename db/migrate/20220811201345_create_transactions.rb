class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :name
      t.string :to
      t.float :amount
      t.string :currency
      t.float :converted_amount

      t.timestamps
    end
  end
end
