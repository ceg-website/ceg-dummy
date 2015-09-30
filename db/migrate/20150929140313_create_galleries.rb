class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title
      t.attachment :image

      t.timestamps null: false
    end
  end
end
