# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ulke = Country.new
ulke.name = 'Turkey'
ulke.save

sehir1 = City.new
sehir1.name = "İzmir"
sehir1.country = ulke
sehir1.save

sehir2 = City.new
sehir2.name = "Ankara"
sehir2.country = ulke
sehir2.save

universite = University.new
universite.name = "Ege Üniversitesi"
universite.city = sehir1
universite.save

uzmanlik = Expertise.new
uzmanlik.name = "Görüntü İşleme"
uzmanlik.save

unvan = Title.new
unvan.name = "Prof. Dr."
unvan.save