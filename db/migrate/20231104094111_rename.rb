class Rename < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :sex, :gender
  end
end
