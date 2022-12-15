
class Bookmark < ApplicationRecord
end

class Bookmark < ApplicationRecord
  belongs_to :users, optional: true
  belongs_to :books, optional: true
end


