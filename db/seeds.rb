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
    destination: 'Rua Aprazivel 18 Rio de Janeiro',
    capacity: 'Fits in a car',
    price: '10',
    comment: "I'm going back home as usual, and will have space in my mid-size car (Fiat Sentra), for middle-sized packages. If you need the delivery in Rio de Janeiro downtown, I can drop off the package on the same day.",
    user: user
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Rua da Gloria 13 Rio de Janeiro',
    destination: 'Avenida Consolaçao 39 Sao Paulo',
    capacity: 'Fits in a bag',
    price: '20',
    comment: "Going to SP for the week end. I can take your item in my bag if not too heavy",
    user: user
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Rua Apinages 15 Sao Paulo',
    destination: 'Rua Visconde de Piraja 38 Rio de Janeiro',
    capacity: 'Fits in a bag',
    price: "14",
    comment: "Going by bus. Let meet at the bus station",
    user: user
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Rua Aarao Reis 81 Rio de Janeiro',
    destination: 'Rua Alfonso Bovero 23 Sao Paulo',
    capacity: 'Fits in a pocket',
    price: "17",
    comment: "Going by plan. Let meet at the airport",
    user: user
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Avenida Pinheiros 23 Sao Paulo',
    destination: 'Avenida Nossa Senhora 56 Rio de Janeiro',
    capacity: 'Fits in a car',
    price: "18",
    comment: "I am mooving back to Rio by car, fell free to meet me at my address",
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
