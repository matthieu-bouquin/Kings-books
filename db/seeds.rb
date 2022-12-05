require 'faker'

Category.delete_all
Book.delete_all

9.times do	
	Category.create(genre: Faker::Book.genre)
end
9.times do	
	Book.create(name: Faker::Book.title, description: Faker::Lorem.paragraph, author:Faker::Book.author, year: Faker::Number.binary(digits: 4), category_id: Category.all.sample)
end
