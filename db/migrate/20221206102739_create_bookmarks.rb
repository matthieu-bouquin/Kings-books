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
