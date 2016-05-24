# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create([
{ email: "sezama03@hotmail.com", password: "holamama" },
{ email: "lilianarestrepot@gmail.com", password: "holamama" }
])


# Create Music Tracks From First CD
extn = File.extname "app/assets/audios/Cubierta de tu amor.mp3"
name = File.basename "app/assets/audios/Cubierta de tu amor.mp3", extn
music_track = MusicTrack.new(
  name: name,
  author: "Ana Catalina",
  image: File.new("app/assets/images/anacatalina/5.jpg")
)
track = music_track.tracks.new(audio: File.open("app/assets/audios/Cubierta de tu amor.mp3"))
music_track.save
track.save

extn = File.extname "app/assets/audios/Espíritu santo.mp3"
name = File.basename "app/assets/audios/Espíritu santo.mp3", extn
music_track = MusicTrack.new(
  name: name,
  author: "Ana Catalina",
  image: File.new("app/assets/images/anacatalina/5.jpg")
)
track = music_track.tracks.new(audio: File.open("app/assets/audios/Espíritu santo.mp3"))
music_track.save
track.save

extn = File.extname "app/assets/audios/Junto a tí.mp3"
name = File.basename "app/assets/audios/Junto a tí.mp3", extn
music_track = MusicTrack.new(
  name: name,
  author: "Ana Catalina",
  image: File.new("app/assets/images/anacatalina/5.jpg")
)
track = music_track.tracks.new(audio: File.open("app/assets/audios/Junto a tí.mp3"))
music_track.save
track.save

extn = File.extname "app/assets/audios/Lo que tengo te doy.mp3"
name = File.basename "app/assets/audios/Lo que tengo te doy.mp3", extn
music_track = MusicTrack.new(
  name: name,
  author: "Ana Catalina",
  image: File.new("app/assets/images/anacatalina/5.jpg")
)
track = music_track.tracks.new(audio: File.open("app/assets/audios/Lo que tengo te doy.mp3"))
music_track.save
track.save

extn = File.extname "app/assets/audios/Madre amor.mp3"
name = File.basename "app/assets/audios/Madre amor.mp3", extn
music_track = MusicTrack.new(
  name: name,
  author: "Ana Catalina",
  image: File.new("app/assets/images/anacatalina/5.jpg")
)
track = music_track.tracks.new(audio: File.open("app/assets/audios/Madre amor.mp3"))
music_track.save
track.save

extn = File.extname "app/assets/audios/Mi vida en tus manos.mp3"
name = File.basename "app/assets/audios/Mi vida en tus manos.mp3", extn
music_track = MusicTrack.new(
  name: name,
  author: "Ana Catalina",
  image: File.new("app/assets/images/anacatalina/5.jpg")
)
track = music_track.tracks.new(audio: File.open("app/assets/audios/Mi vida en tus manos.mp3"))
music_track.save
track.save

extn = File.extname "app/assets/audios/Sin desmayar.mp3"
name = File.basename "app/assets/audios/Sin desmayar.mp3", extn
music_track = MusicTrack.new(
  name: name,
  author: "Ana Catalina",
  image: File.new("app/assets/images/anacatalina/5.jpg")
)
track = music_track.tracks.new(audio: File.open("app/assets/audios/Sin desmayar.mp3"))
music_track.save
track.save

extn = File.extname "app/assets/audios/Tú en mí.mp3"
name = File.basename "app/assets/audios/Tú en mí.mp3", extn
music_track = MusicTrack.new(
  name: name,
  author: "Ana Catalina",
  image: File.new("app/assets/images/anacatalina/5.jpg")
)
track = music_track.tracks.new(audio: File.open("app/assets/audios/Tú en mí.mp3"))
music_track.save
track.save

extn = File.extname "app/assets/audios/Vuelvo a tí.mp3"
name = File.basename "app/assets/audios/Vuelvo a tí.mp3", extn
music_track = MusicTrack.new(
  name: name,
  author: "Ana Catalina",
  image: File.new("app/assets/images/anacatalina/5.jpg")
)
track = music_track.tracks.new(audio: File.open("app/assets/audios/Vuelvo a tí.mp3"))
music_track.save
track.save