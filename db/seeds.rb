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

hikaru = User.create(email: "hikaru@gmail.com", password: "123456")
gotham = User.create(email: "gotham@gmail.com", password: "123456")
hikaru_team = Team.create(user: hikaru , name: "Hikaru")
gotham_team = Team.create(user: gotham , name: "Gotham")

[battle1, battle2, battle3].each do |battle|
  battle.each do |k, v|
    battle = Battle.create(home_team: hikaru_team, away_team: gotham_team)
    home_player = User.find_or_create_by(v[:players].first)
    away_player = User.find_or_create_by(v[:players].last)
  end
end

battle1 = {"0"=>{:players=>["linuxarcher", "xxdustymcflyxx"], :result=>["1", "0"]},
 "1"=>{:players=>["Stoneworker427", "adamspa"], :result=>["1", "0"]},
 "2"=>{:players=>["hiwolf25", "proseqtor"], :result=>["1", "0"]},
 "3"=>{:players=>["3motionly", "lincoln_b"], :result=>["0", "1"]},
 "4"=>{:players=>["alim-ind", "mike_metzan"], :result=>["1", "0"]},
 "5"=>{:players=>["eragonshadeslayer", "lancelotal"], :result=>["0.5", "0.5"]},
 "6"=>{:players=>["fngon94", "occamishachet"], :result=>["0", "1"]},
 "7"=>{:players=>["kindapinkjake", "aleksandar_jeremic"], :result=>["1", "0"]},
 "8"=>{:players=>["dominitch", "solepyromaniac"], :result=>["0", "1"]},
 "9"=>{:players=>["djblunderz", "sumwunking"], :result=>["0", "1"]},
 "10"=>{:players=>["autowgc", "gmrainz"], :result=>["1", "0"]},
 "11"=>{:players=>["harrison100", "desseankittkatt"], :result=>["1", "0"]},
 "12"=>{:players=>["mr_energy", "25elevin"], :result=>["0", "1"]},
 "13"=>{:players=>["bogismudj", "ruilopezgotdeported"], :result=>["0.5", "0.5"]},
 "14"=>{:players=>["zionpureinheart", "cha_charealsmooth"], :result=>["0", "1"]}}

 battle2 = {"0"=>{:players=>["jackhartmann", "justtizi"], :result=>["0", "1"]},
 "1"=>{:players=>["idabbyx", "immortalpoke"], :result=>["0", "1"]},
 "2"=>{:players=>["skrune22", "jckhan"], :result=>["0", "1"]},
 "3"=>{:players=>["chessguy149", "nonamepotato"], :result=>["0", "1"]},
 "4"=>{:players=>["kindapinkjake", "chennai_beast"], :result=>["1", "0"]},
 "5"=>{:players=>["jackrankin", "calcober"], :result=>["0.5", "0.5"]},
 "6"=>{:players=>["kingsindian2200", "ifcarusoplayedchess"], :result=>["0.5", "0.5"]},
 "7"=>{:players=>["stevis5", "aquilaungula"], :result=>["1", "0"]},
 "8"=>{:players=>["zzwhoa", "gokul999"], :result=>["0", "1"]},
 "9"=>{:players=>["2random471", "culum2007"], :result=>["1", "0"]},
 "10"=>{:players=>["aa175", "agent-jl"], :result=>["0", "1"]}}

battle3 = {"0"=>{:players=>["amimak", "archari1"], :result=>["1", "0"]},
 "1"=>{:players=>["joelclementine", "shikharchess01"], :result=>["0", "1"]},
 "2"=>{:players=>["chaichess", "kingsnanik"], :result=>["0", "1"]},
 "3"=>{:players=>["nitrotibble", "eturboso"], :result=>["0", "1"]},
 "4"=>{:players=>["lattenkiste", "exsitentambivalence"], :result=>["1", "0"]},
 "5"=>{:players=>["ethicalkid", "joho17"], :result=>["0", "1"]},
 "6"=>{:players=>["jmu10", "lilchik"], :result=>["1", "0"]},
 "7"=>{:players=>["kingsindian2200", "sterlin18"], :result=>["0", "1"]},
 "8"=>{:players=>["ashaw6", "dezertwarrior"], :result=>["1", "0"]},
 "9"=>{:players=>["chesslebanesesalah", "stevis5"], :result=>["1", "0"]},
 "10"=>{:players=>["passionfruitgreentea", "guildwars123"], :result=>["0", "1"]},
 "11"=>{:players=>["2random471", "goku999"], :result=>["0", "1"]},
 "12"=>{:players=>["beefstewer", "culum2007"], :result=>["0.5", "0.5"]}}


# battle1 = %w()

# result1 = %w()

# hash = {}
# battle1.each_slice(2).with_index {|slice, index| hash["#{index}"] = {players: slice, result: []} }
# result1.each_slice(2).with_index do |slice, index|
#   hash[index.to_s][:result] = slice
# end
