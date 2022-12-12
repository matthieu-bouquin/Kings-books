class CreateBookPageOnes < ActiveRecord::Migration[7.0]
  def change
    create_table :book_pages do |t|
      t.text :pageOne
      t.text :pageTwo
      t.text :pageThree
      t.text :pageFour
      t.text :pageFive
      t.text :pageSix
      t.belongs_to :book, index: true
    end
  end
end
