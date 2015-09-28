class CreateDeptFaculs < ActiveRecord::Migration
  def change
    create_table :dept_faculs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
