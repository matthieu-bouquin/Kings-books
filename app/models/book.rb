class Book < ApplicationRecord
  belongs_to :categories, optional: true
end
