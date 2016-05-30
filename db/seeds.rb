# User seeds
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

# Background Images Seeds
i = 1
40.times do
  BackgroundImage.create(image: File.new("app/assets/images/anacatalina/#{i.to_s}.jpg"))
  i += 1
end

# Seeds for copies
Copy.create(home_title_1: "Bienvenido a mi website", home_text: "Mauris a massa id leo aliquam consequat porttitor vitae est. Proin ultricies velit sed porttitor viverra. Pellentesque eget tristique est. Donec volutpat, eros et bibendum lacinia, enim ipsum gravida enim, quis viverra odio elit sit amet orci. Aenean eget mi quam.", home_service_title_1: "Tú en mí", home_service_text_1: "Información de la marca", home_service_link_1: "#", home_service_title_2: "Album Tú en mí", home_service_text_2: "Información del CD.", home_service_link_2: "#", home_service_title_3: "Mi vida en tus manos", home_service_text_3: "Información de programa radial.", home_service_link_3: "#", footer_title_1: "Location", footer_text_1: "PO Box 16122 Collins Street West Victoria 8007 Australia", footer_title_2: "Opening Hours", footer_text_2: "MON - FRI 9 AM TO 10 PM", footer_title_3: "Happy Hours", footer_text_3: "MON - FRI 2 PM TO 06 PM", contact_title: "Contáctame", contact_text: "Nulla or narm mus vel ultrici. Quisque ve odio nibh. Fusce vel dignissim orm, ac esuada massa.", contact_phone_1: "+00 0000 000", contact_phone_2: "+00 0000 000")
