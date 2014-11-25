user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

u = User.create!(email: 'admin@test.com', password: 'passw0rd', name: 'System Admin')
albums = [
  {
    artist: 'John Coltrane',
    title: 'A Love Supreme',
    year: 1965,
    song_count: 3,
    user_id: u.id
  },
  {
    artist: 'Miles Davis',
    title: 'Kind of Blue',
    year: 1959,
    song_count: 5,
    user_id: u.id
  },
  {
    artist: 'Cannonball Adderley',
    title: 'Autumn Leaves',
    year: 1975,
    song_count: 5,
    user_id: u.id
  },
  {
    artist: 'Sonny Rollins',
    title: 'Saxophone Colossus',
    year: 1956,
    song_count: 5,
    user_id: u.id
  },
  {
    artist: 'Thelonius Monk',
    title: 'Brilliant Corners',
    year: 1957,
    song_count: 5,
    user_id: u.id,
  },
  {
    artist: 'Miles Davis',
    title: 'Birth of the Cool',
    year: 1957,
    song_count: 5,
    user_id: u.id,
  },
  {
    artist: 'Horace Silver',
    title: 'Horace Silver and the Jazz Messengers',
    year: 1955,
    song_count: 8,
    user_id: u.id,
  },
  {
    artist: 'John Coltrane',
    title: 'Blue Train',
    year: 1957,
    song_count: 5,
    user_id: u.id,
  },
  {
    artist: 'Freddie Hubbard',
    title: 'Ready for Freddie',
    year: 1961,
    song_count: 7,
    user_id: u.id,
  },
]

albums.each { |album_attrs| Album.create!(album_attrs) }

