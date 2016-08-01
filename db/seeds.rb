# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.destroy_all
Character.destroy_all

targaryen = House.create!(name: 'Targaryen', words: 'Fire and Blood', sigil_url: 'http://vignette2.wikia.nocookie.net/gameofthrones/images/4/43/House-Targaryen-Main-Shield.PNG/revision/latest?cb=20151209185148')
stark = House.create!({name: 'Stark', words:'Winter is coming.', sigil_url: 'http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/latest?cb=20160703180116'})
lannister = House.create!({name: 'Lannister', words: 'A Lannister always pays his debts.', sigil_url: 'http://vignette3.wikia.nocookie.net/gameofthrones/images/8/8a/House-Lannister-Main-Shield.PNG/revision/latest?cb=20151207184048'})
tyrell = House.create!({name: 'Tyrell', words: 'Growing Strong', sigil_url: 'http://vignette2.wikia.nocookie.net/gameofthrones/images/c/cf/House-Tyrell-Main-Shield.PNG/revision/latest?cb=20151209185350'})

puts "Houses created"
Character.create!(name: 'Daenerys Targaryen', photo_url: 'http://vignette2.wikia.nocookie.net/gameofthrones/images/2/28/Dany_finale_s6_winds_of_winter.jpg/revision/latest?cb=20160630224410', house: targaryen)
puts "Daenerys created"

Character.create!({name: "Ned Stark", photo_url: 'http://vignette1.wikia.nocookie.net/gameofthrones/images/3/37/Eddard_Stark_infobox_new.jpg/revision/latest?cb=20160730050722', house: stark})
Character.create!({name: "Sansa Stark", photo_url: 'http://vignette1.wikia.nocookie.net/gameofthrones/images/c/cf/Sansa_Battle_of_Bastards_main.jpg/revision/latest?cb=20160621005428', house: stark})
Character.create!({name: "Arya Stark", photo_url: 'http://vignette1.wikia.nocookie.net/gameofthrones/images/a/ad/Arya6x10.png/revision/latest?cb=20160629211505', house: stark})
Character.create!({name: "Bran Stark", photo_url: 'http://vignette1.wikia.nocookie.net/gameofthrones/images/0/0d/Bran_winds_of_winter_finale_s6.jpg/revision/latest?cb=20160623043335', house: stark})


Character.create!({name: "Cersei Lannister", photo_url: 'http://vignette2.wikia.nocookie.net/gameofthrones/images/c/c7/Queen_Cersei_Main_The_winds_of_Winter.jpg/revision/latest?cb=20160712032316', house: lannister})
Character.create!({name: "Jaime Lannister", photo_url: 'http://vignette4.wikia.nocookie.net/gameofthrones/images/c/c5/Jaime_s6_Ep08_.jpg/revision/latest?cb=20160616044155', house: lannister})
Character.create!({name: "Tyrion Lannister", photo_url: 'http://vignette4.wikia.nocookie.net/gameofthrones/images/9/9d/Tyrion6x082.png/revision/latest?cb=20160609061404', house: lannister})


Character.create!({name: "Margaery Tyrell", photo_url: 'http://vignette2.wikia.nocookie.net/gameofthrones/images/b/b5/Margaery_Tyrell_S6.png/revision/latest?cb=20160729224605', house: tyrell})

#
