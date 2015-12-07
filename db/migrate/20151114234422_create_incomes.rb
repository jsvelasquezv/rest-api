class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.string :name
      t.text :description
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
