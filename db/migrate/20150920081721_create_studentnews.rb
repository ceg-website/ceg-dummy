class CreateStudentnews < ActiveRecord::Migration
  def change
    create_table :studentnews do |t|
      t.string :stnews
      t.integer :stid

      t.timestamps null: false
    end
  end
end
