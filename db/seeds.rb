User.destroy_all
Kitten.destroy_all
Category.destroy_all

User.create!(
  name: "Some User",
  email: 'user@example.com',
  password: 'password',
  password_confirmation: 'password'
)

%w(
http://i.imgur.com/mE13UCtb.jpg
http://i.imgur.com/k7BtQSmb.jpg
http://i.imgur.com/BLXdY3Eb.jpg
http://i.imgur.com/9Hc8bmob.jpg
http://i.imgur.com/ERebecgb.jpg
http://i.imgur.com/bZiCFieb.jpg
http://i.imgur.com/tOzb0dUb.jpg
).each do |image|
  Kitten.create!(image: image)
end

[
  "Cute",
  "The Cutest",
  "Adorable",
  "Precious",
  "Endearing",
  "Lovable",
  "Sweet",
  "Dear",
  "Delightful",
].each do |name|
  Category.create!(name: name)
end