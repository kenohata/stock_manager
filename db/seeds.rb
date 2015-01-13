# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(image: open("#{Rails.root}/public/images/kirin_beer_500.jpg"),   name: "kirin500",  price: 350)
Product.create(image: open("#{Rails.root}/public/images/kirin_lager_500.jpg"),  name: "lagar500",  price: 350)
Product.create(image: open("#{Rails.root}/public/images/kirin_tanrei_500.jpg"), name: "tanrei500", price: 250)
