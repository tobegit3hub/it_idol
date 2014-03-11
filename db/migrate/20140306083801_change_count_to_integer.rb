class ChangeCountToInteger < ActiveRecord::Migration
  def change
    change_column :idols, :count, :integer
  end
end
