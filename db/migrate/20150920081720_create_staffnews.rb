class CreateStaffnews < ActiveRecord::Migration
  def change
    create_table :staffnews do |t|
      t.string :stnews
      t.integer :stid

      t.timestamps null: false
    end
  end
end
