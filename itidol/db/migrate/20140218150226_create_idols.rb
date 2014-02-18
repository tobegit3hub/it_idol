class CreateIdols < ActiveRecord::Migration
  def change
    create_table :idols do |t|
      t.string :name
      t.string :contact
      t.text :about
      t.string :motto

      t.timestamps
    end
  end
end
