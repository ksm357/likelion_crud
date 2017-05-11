class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :dbTitle
      t.text :dbContent
      t.string :dbName

      t.timestamps null: false
    end
  end
end
