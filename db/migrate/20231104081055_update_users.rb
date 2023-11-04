class UpdateUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :sex, :string
    add_column :users, :age, :integer
    add_column :users, :weight, :integer
    add_column :users, :height, :integer
  end
end
