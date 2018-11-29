# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
    origin: 'Avenida Paulista 110 Sao Paulo',
    destination: 'Rua Aprazivel 18 Rio de janeiro',
    capacity: 'Fits in a car',
    price: '10',
    user: user
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Avenida Consolaçao 39 Sao Paulo',
    destination: 'Rua da Gloria 13 Rio de janeiro',
    capacity: 'Fits in a bag',
    price: '20',
    user: user
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Rua Apinages 15 Sao Paulo',
    destination: 'Rua Visconde de Piraja 38 Rio de janeiro',
    capacity: 'Fits in a bag',
    price: "14",
    user: user
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Rua Alfonso Bovero 23 Sao Paulo',
    destination: 'Rua Aarao Reis 81 Rio de janeiro',
    capacity: 'Fits in a pocket',
    price: "17",
    user: user
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Avenida Pinheiros 23 Sao Paulo',
    destination: 'Avenida Nossa Senhora 56 Rio de janeiro',
    capacity: 'Fits in a car',
    price: "18",
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
