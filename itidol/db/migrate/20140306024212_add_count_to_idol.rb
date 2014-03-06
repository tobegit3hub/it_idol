class AddCountToIdol < ActiveRecord::Migration
  def change
    add_column :idols, :count, :decimal
  end
end
