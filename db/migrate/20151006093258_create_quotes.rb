class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :cont

      t.timestamps null: false
    end
  end
end
