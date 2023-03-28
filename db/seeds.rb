# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Perfomance.destroy_all

["Ревизор", "Вишневый сад", "День радио"].each do |perfomance|
  Perfomance.create(title: perfomance)
end

Calendar.destroy_all

Calendar.create(perfomance: Perfomance.take, duration: Date.new(2019, 2, 20)..Date.new(2019, 3, 1))
