class CreatePatrimonies < ActiveRecord::Migration
  def change
    create_table :patrimonies do |t|
      t.string :name
      t.number :value
      t.string :type
      t.string :acquisition_date

      t.timestamps null: false
    end
  end
end
