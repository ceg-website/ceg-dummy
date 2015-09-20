class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :cname
      t.integer :cid
      t.text :cbody
      t.text :extra
      t.attachment :cimage
      t.string :clink
      t.string :slug

      t.timestamps null: false
    end
    add_index :clubs, :slug, unique: true
  end
end
