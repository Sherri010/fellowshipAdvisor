# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


cities = City.create([
  {
    name: "The Shire",
    country: "Eriador",
    picture: "https://i.imgur.com/vDwV7Sz.jpg"
  },
  {
    name: "Rivendell",
    country: "Eriador",
    picture: "https://i.imgur.com/HnzRkEN.jpg"
  },
  {
    name: "Isengard",
    country: "Rohan",
    picture: "https://i.imgur.com/IBTYK7R.jpg"
  },
  {
    name: "Helm's Deep",
    country: "Rohan",
    picture: "https://i.imgur.com/bPxebsL.png"
  },
  {
    name: "Mount Doom",
    country: "Mordor",
    picture: "https://i.imgur.com/FlgkWAX.png"
  },
  {
    name: "Shelob's Lair",
    country: "Mordor",
    picture: "http://i.imgur.com/c1mkcRk.jpg"
  }])

users = User.create([
  {
    name: "Legolas",
    current_city: "Rivendell",
    email: "legolas@gmail.com",
    password: "123",
    picture: "http://data.whicdn.com/images/66042599/large.png"
  },
  {
    name: "Aragorn",
    current_city: "Rivendell",
    email: "aragorn@apple.com",
    password: "123",
    picture: "https://vignette3.wikia.nocookie.net/lotr/images/0/09/Aragorn_3.jpg/revision/latest?cb=20100617184918"
  },
  {
    name: "Arwen",
    current_city: "Rivendell",
    email: "arwen@jezebel.com",
    password: "123",
    picture: "https://vignette4.wikia.nocookie.net/lotr/images/d/dd/100_beautiful_arwen.jpg/revision/latest?cb=20110313201140"
  },
  {
    name: "Gollum",
    current_city: "Mount Doom",
    email: "gollum@yahoo.com",
    password: "123",
    picture: "https://s-media-cache-ak0.pinimg.com/564x/97/c0/5a/97c05a640f7ef92945a3c672a7c99a1b.jpg"
  },
  {
    name: "Sauron",
    current_city: "Mount Doom",
    email: "sauron@evil.com",
    password: "123",
    picture: "https://vignette2.wikia.nocookie.net/lotr/images/9/91/437px-Sauron_hi_res-1-.jpg/revision/latest?cb=20120506173055"
  },
  {
    name: "Pippin",
    current_city: "The Shire",
    email: "pippin@weedmaps.com",
    password: "123",
    picture: "https://s-media-cache-ak0.pinimg.com/736x/31/e4/79/31e479a509d95bc6b41f0ad574022afe.jpg"
  },
  {
    name: "Gandalf the Grey",
    current_city: "The Shire",
    email: "gandalfthegrey@aol.com",
    password: "123",
    picture: "https://www.bladecenter.com/images/products/detail/UC2926_1.jpg"
  },
  {
    name: "Gandalf the White",
    current_city: "The Shire",
    email: "gandalfthewhite@aol.com",
    password: "123",
    picture: "https://static.comicvine.com/uploads/original/11117/111173561/5051391-2794028225-17163.jpg"
  }])
