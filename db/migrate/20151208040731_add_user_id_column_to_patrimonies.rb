class AddUserIdColumnToPatrimonies < ActiveRecord::Migration
  def change
    add_column :patrimonies, :user_id, :integer
  end
end
