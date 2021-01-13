class AddUniqueIndexOnLabels < ActiveRecord::Migration[5.2]
  def change
    remove_index :labels, [:user_id, :key, :scope]
    add_index :labels, [:user_id, :key, :scope], unique: true
  end
end
