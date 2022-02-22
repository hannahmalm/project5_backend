# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Run.create(category: 'Intervals')
Run.create(category: 'Fartlek')
Run.create(category: 'Tempo')
Run.create(category: 'Long Run')


Log.create(distance:12.4, pace:'9 54', date: '02/22/22', notes: 'test', run: 1)
