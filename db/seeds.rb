
users=[
  user1 =  User.create(email: 'test-user1@event.com', password: 'wowser1'),
  user2 =  User.create(email: 'test-user2@event.com', password: 'wowser2'),
  user3 =  User.create(email: 'test-user3@event.com', password: 'wowser3')
]


users.each do |user|
  2.times do
    Event.create(
    name: Faker::Music.album,
    location: Faker::Address.city,
    notes: Faker::Quote.famous_last_words,
    user_id: user1.id
    )
  end
  
  2.times do
    Event.create(
    name: Faker::Music.album,
    location: Faker::Address.city,
    notes: Faker::Quote.famous_last_words,
    user_id: user2.id
    )
  end
  
  2.times do
    Event.create(
    name: Faker::Music.album,
    location: Faker::Address.city,
    notes: Faker::Quote.famous_last_words,
    user_id: user3.id
    )
  end
end