class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :dname
      t.integer :did
      t.text :body
      t.text :extra1
      t.attachment :dimage
      t.string :dlink
      t.string :slug

      t.timestamps null: false
    end
    add_index :departments, :slug, unique: true
  end
end
