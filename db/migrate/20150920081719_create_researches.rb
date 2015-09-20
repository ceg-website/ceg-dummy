class CreateResearches < ActiveRecord::Migration
  def change
    create_table :researches do |t|
      t.string :rname
      t.integer :rid
      t.text :rbody
      t.text :rextra
      t.attachment :rimage
      t.string :rlink
      t.string :slug
      t.string :rauthor

      t.timestamps null: false
    end
    add_index :researches, :slug, unique: true
  end
end
