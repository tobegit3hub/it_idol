class AddIdolIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :idol_id, :integer
    add_index :comments, :idol_id
  end
end
