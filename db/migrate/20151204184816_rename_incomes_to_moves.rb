class RenameIncomesToMoves < ActiveRecord::Migration
  def change
    rename_table :incomes, :moves
  end
end
