Actor.delete_all
Character.delete_all
Network.delete_all
Show.delete_all

nbc = Network.create(channel: 4, call_letters: "NBC")

frasier = Show.create(name: "Frasier")
got = Show.create(name: "Game of Thrones")
simpsons = Show.create(name: "The Simpsons")
happy_endings = Show.create(name: "Happy Endings")
community = Show.create(name: "Community", day: "Thursday", season: "Winter", genre: "Comedy")
the_walking_dead = Show.create(name: "The Walking Dead")
community= Show.create(name: "Community", network_id: nbc.id)

andrew = Actor.create(first_name: "Andrew", last_name: "Lincoln")
danny_pudi = Actor.create(first_name: "Danny", last_name: "Pudi")
emilia = Actor.create(first_name: "Emilia", last_name: "Clarke")

abed = Character.create(name:'Abed', actor_id: danny_pudi.id)
jerry = Character.create(name: 'Jerry')
urkel = Character.create(name: "Steve Urkel", catchphrase: "Did I do that?")
niles = Character.create(name: "Niles Crane", show_id: frasier.id)
jules_cobb = Character.new(name: "Jules Cobb")
urkel = Character.create(name: "Steve Urkel", catchphrase: "Did I do that?")
khalessi= Character.create(name: "Khaleesi", actor_id: emilia.id, show_id: got.id)
ralph= Character.create(name: "Ralph Wiggum", show_id: simpsons.id)
homer= Character.create(name: "Homer Simpson", show_id: simpsons.id)
apu= Character.create(name: "Apu Nahasapeemapetilon", show_id: simpsons.id)

