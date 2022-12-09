class Book < ApplicationRecord

  belongs_to :categories, optional: true
  has_many :book_pages
  has_many :bookmarks
end
