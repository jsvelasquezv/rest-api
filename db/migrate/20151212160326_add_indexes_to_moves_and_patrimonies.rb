class AddIndexesToMovesAndPatrimonies < ActiveRecord::Migration
  def change
    add_index :patrimonies, :user_id
    add_index :moves, :user_id
  end
end
