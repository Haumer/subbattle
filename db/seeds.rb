ben = User.create(email: "ben@gmail.com", password: "123456")
alex = User.create(email: "alex@gmail.com", password: "123456")
alex_team = Team.create(user: alex, name: "Alex Team")
ben_team = Team.create(user: ben, name: "Ben Team")

puts 'creating Alex Team members'
10.times {
  user = User.create(email: Faker::Internet.email, username: Faker::Internet.username, password: "123456", rating: (500..2500).to_a.sample)
  Membership.create(user: user, team: alex_team)
}

puts 'creating Ben Team members'
10.times {
  user = User.create(email: Faker::Internet.email, username: Faker::Internet.username, password: "123456", rating: (500..2500 ).to_a.sample)
  Membership.create(user: user, team: ben_team)
}

battle = Battle.create(home_team: alex_team, away_team: ben_team)
