# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Routes.destroy_all

puts 'Creating routes...'
routes_attributes = [
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Sao Paulo',
    destination: 'Rio de janeiro',
    capacity: 'small',
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Sao Paulo',
    destination: 'Rio de janeiro',
    capacity: 'small',
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Sao Paulo',
    destination: 'Rio de janeiro',
    capacity: 'small',
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Sao Paulo',
    destination: 'Rio de janeiro',
    capacity: 'small',
  },
  {
    start_date_time: '01/12/2018',
    end_date_time: '02/12/2018',
    origin: 'Sao Paulo',
    destination: 'Rio de janeiro',
    capacity: 'small',
  }

]

Route.create!(Routes_attributes)
puts 'Finished!'


puts 'Cleaning database...'
Users.destroy_all

puts 'Creating Users...'
Users_attributes = [
  {
    email: example@gmail.com ,
    encrypted_password: '123',

  },
]
User.create!(users_attributes)
puts 'Finished!'
