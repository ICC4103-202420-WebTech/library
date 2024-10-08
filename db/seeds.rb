# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Book.delete_all
Author.delete_all

peterson = Author.create!(name: 'Jordan', last_name:  'Peterson', birth_date: Date.new(1949, 10, 15), blood: 1)
marcel = Author.create!(name: 'Marcel', last_name:  'Paz', birth_date: Date.new(1902, 2, 28), blood: 2)
jesus = Author.create!(name: 'Jesús', last_name:  'Nazareth', birth_date: Date.new(0, 1, 1), blood: 2)

Book.create!(title: '12 Reglas para Vivir', year_of_publication: 2010, author_id: peterson.id)
Book.create!(title: 'Papelucho', year_of_publication: 1947, author: marcel)
Book.create!(title: 'Biblia', year_of_publication: 0, author: jesus)

