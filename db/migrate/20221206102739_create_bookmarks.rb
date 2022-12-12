<<<<<<< HEAD
class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.string :name
      t.float :price
      t.timestamps
    end
  end
end
=======
class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.string :name
      t.integer :current_page
      t.belongs_to :book, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
>>>>>>> 744f54b8d0969b2eeb9be04bec0a0359edefbfa4
