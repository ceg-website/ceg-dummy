class CreateThirukurals < ActiveRecord::Migration
  def change
    create_table :thirukurals do |t|
      t.text :cont

      t.timestamps null: false
    end
  end
end
