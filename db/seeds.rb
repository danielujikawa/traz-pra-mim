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
    email: 'flavio123@gmail.com',
    password: '123456',
    username: 'Flavio'

  },
  {
    email: 'rodrigo123@gmail.com',
    password: '123456',
    username: 'Rodrigo123'

  },
  {
    email: 'ricardo@gmail.com',
    password: '123456',
    username: 'Ricardo'

  },
  {
    email: 'flavia@msn.com',
    password: '123456',
    username: 'Flavia'

  },
  {
    email: 'olivia@sfr.com',
    password: '123456',
    username: 'Olivia-Linda'

  },
  {
    email: 'Alexia@aol.com',
    password: '123456',
    username: 'Alexia'

  }
]
User.create!(users_attributes)

# user1 = User.all.sample
# user2 = User.all.sample
# user3 = User.all.sample
# user4 = User.all.sample
# user5 = User.all.sample
users = User.all
puts 'Finished user!'

puts 'Creating routes...'
routes_attributes = [
  {
    start_date_time: '30/11/2018',
    end_date_time: '01/12/2018',
    origin: 'Avenida Paulista, 9756 - Sao Paulo',
    destination: 'Rua Aprazivel, 18 - Rio de Janeiro',
    capacity: 'Fits in a car',
    price: '15',
    comment: "I'm going back home as usual, arriving the next day. Will have space in my mid-size car (Fiat Sentra), for middle-sized packages. If you need the delivery in Rio de Janeiro downtown, I can drop off the package on the same day of arrival.",
    user: users.sample
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '01/12/2018',
    origin: 'Rua Henrique Schaumann, 110 - Sao Paulo',
    destination: 'Rua do Catete, 18 - Rio de Janeiro',
    capacity: 'Fits in a van',
    price: '25',
    comment: "Will head to Rio in the morning, and will be arriving there in the afternoon with my van. A lot od space available. Hit me up and we can arrange the best way for the pickup.",
    user: users.sample
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Rua Apinages, 15 - Sao Paulo',
    destination: 'Rua Visconde de Piraja, 38 - Rio de Janeiro',
    capacity: 'Fits in a bag',
    price: "10",
    comment: "Travelling by bus at night & getting there the next day. I could pickup the item at the Tiete Bus Station, and deliver at Mundo Novo Rio Station.",
    user: users.sample
  },
  {
    start_date_time: '30/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Rua dos Pinheiros, 23 - Sao Paulo',
    destination: 'Avenida Nossa Senhora, 56 - Rio de Janeiro',
    capacity: 'Fits in a car',
    price: "18",
    comment: "I am moving back to Rio by car but travelling light, feel free to meet me at my address for the item pickup.",
    user: users.sample
  },
  {
    start_date_time: '30/12/2018',
    end_date_time: '31/12/2019',
    origin: 'Avenida do Gasometro, 750 - Sao Paulo',
    destination: 'Avenida do Maracana, 81 - Rio de Janeiro',
    capacity: 'Fits in a pocket',
    price: "10",
    comment: "Going to Rio for a New Year`s job, and could deliver any small size item that could fit in my pocket.",
    user: users.sample
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Rua da Gloria, 13 - Rio de Janeiro',
    destination: 'Avenida da Consolaçao, 39 - Sao Paulo',
    capacity: 'Fits in a bag',
    price: '20',
    comment: "Going to SP for the weekend. I can take your item in my bag if not too heavy.",
    user: users.sample
  },
  {
    start_date_time: '30/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Rua Barao Reis, 81 - Rio de Janeiro',
    destination: 'Rua Alfonso Bovero, 23 - Sao Paulo',
    capacity: 'Fits in a pocket',
    price: "17",
    comment: "Travelling by plane. Let's meet at the airport",
    user: users.sample
  },
  {
    start_date_time: '30/12/2018',
    end_date_time: '30/12/2018',
    origin: 'Avenida Copacabana, 231 - Rio de Janeiro',
    destination: 'Rua Capote Valente, 90 - Sao Paulo',
    capacity: 'Fits in a car',
    price: "35",
    comment: "Travelling tonight by car and arriving there after 0am. I could take mid-sized boxes in my car.",
    user: users.sample
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '01/12/2018',
    origin: 'Avenida Atlantica, 908 - Rio de Janeiro',
    destination: 'Avenida Jabaquara, 588 - Sao Paulo',
    capacity: 'Fits in a van',
    price: "30",
    comment: "Travelling with my van arriving there on the same day with a lot of space available. Hit me up and I could help you with heavy stuff.",
    user: users.sample
  }
]

Route.create!(routes_attributes)
puts 'Finished routes!'


reviews_attributes = [
  {
    comment: 'super willing to help, and the delivery went completely fine. I recommend.',
    rating: 5,
    user: users.sample
  },
  {
    comment: 'Super easy to reach and meet.',
    rating: 5,
    user: users.sample
  },
  {
    comment: 'Nice guy. I recommend.',
    rating: 4,
    user: users.sample
  },
  {
    comment: 'Despite some difficulties to meet, everything was ok.',
    rating: 5,
    user: users.sample
  },
  {
    comment: 'Available and charming. I recommend.',
    rating: 3,
    user: users.sample
  },
  {
    comment: 'Do not recommend. Could not reach him on the phone',
    rating: 2,
    user: users.sample
  }
]
Review.create!(reviews_attributes)
puts 'Finished review!'

# orders_attributes = [
#   {
#     content: 'chave',
#     route: Route.all.sample,
#     user: user
#   },
#   {
#     content: 'mochila',
#     route: Route.all.sample,
#     user: user
#   },
#   {
#     content: 'cachorro',
#     route: Route.all.sample,
#     user: user
#   }
# ]

# Order.create!(orders_attributes)
# puts 'Finished order!'
