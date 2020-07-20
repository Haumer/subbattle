ben = User.create(email: "ben@gmail.com",password: "123456")
alex = User.create(email: "alex@gmail.com",password: "123456")
celie = User.create(email: "celie@gmail.com",password: "123456")
becca = User.create(email: "becca@gmail.com",password: "123456")

alex_team = Team.create(user: alex)
ben_team = Team.create(user: ben)
membership = Membership.create(user: celie, team: alex_team)
membership = Membership.create(user: becca, team: ben_team)

battle = Battle.create(home_team: alex_team, away_team: ben_team)
