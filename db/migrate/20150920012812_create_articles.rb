class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :sdesc
      t.text :body
      t.string :author
      t.attachment :fimage

      t.timestamps null: false
    end
  end
end
