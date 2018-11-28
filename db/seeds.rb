# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all..."
Route.destroy_all
Order.destroy_all
User.destroy_all
puts "Destroyed"

puts 'Creating Users...'
users_attributes = [
  {
    email: 'example@gmail.com',
    password: '123456',

  }
]
User.create!(users_attributes)

user = User.first
puts 'Finished user!'

puts 'Creating routes...'
routes_attributes = [
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Sao Paulo',
    destination: 'Rio de janeiro',
    capacity: 'small',
    user: user
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Sao Paulo',
    destination: 'Rio de janeiro',
    capacity: 'small',
    user: user
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Sao Paulo',
    destination: 'Rio de janeiro',
    capacity: 'small',
    user: user
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Sao Paulo',
    destination: 'Rio de janeiro',
    capacity: 'small',
    user: user
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Sao Paulo',
    destination: 'Rio de janeiro',
    capacity: 'small',
    user: user
  }

]

Route.create!(routes_attributes)
puts 'Finished routes!'

orders_attributes = [
  {
    content: 'chave',
    route: Route.all.sample,
    user: user
  },
  {
    content: 'mochila',
    route: Route.all.sample,
    user: user
  },
  {
    content: 'cachorro',
    route: Route.all.sample,
    user: user
  }
]

Order.create!(orders_attributes)
puts 'Finished order!'
