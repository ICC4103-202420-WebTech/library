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

Book.create!(title: '12 Reglas para Vivir', year_of_publication: 2010)
Book.create!(title: 'Papelucho', year_of_publication: 1947)
Book.create!(title: 'Biblia', year_of_publication: 0)