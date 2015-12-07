class Rename < ActiveRecord::Migration
  def change
    rename_column :patrimonies, :type, :kind
  end
end
