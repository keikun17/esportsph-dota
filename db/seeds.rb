Admin.create(email: 'admin@email.com',
             password: 'password',
             password_confirmation: 'password')

hero_names = %w(
  Abaddon
  Alchemist
  Ancient Apparition
  Anti-Mage
  Arc Warden
  Axe
  Bane
  Batrider
  Beastmaster
  Bloodseeker
  Bounty Hunter
  Brewmaster
  Bristleback
  Broodmother
  Centaur Warrunner
  Chaos Knight
  Chen
  Clinkz
  Clockwerk Crystal Maiden
  Dark Seer
  Dazzle
  Death Prophet
  Disruptor
  Doom Bringer
  Dragon Knight
  Drow Ranger
  Earthshaker
  Elder Titan
  Ember Spirit
  Enchantress
  Enigma
  Faceless Void
  Goblin Techies
  Gyrocopter
  Huskar
  Invoker
  Io Jakiro
  Juggernaut
  Keeper of the Light
  Kunkka
  Legion Commander
  Leshrac
  Lich
  Lifestealer
  Lina
  Lion
  Lone Druid
  Luna
  Lycanthrope
  Magnus
  Medusa
  Meepo
  Mirana
  Morphling
  Naga Siren Nature's Prophet
  Necrolyte
  Night Stalker
  Nyx Assassin
  Ogre Magi
  Omniknight
  Outworld Devourer
  Phantom Assassin
  Phantom Lancer
  Phoenix
  Pit Lord
  Puck
  Pudge
  Pugna
  Queen of Pain
  Razor
  Riki
  Rubick
  Sand King Shadow Demon
  Shadow Fiend
  Shadow Shaman
  Silencer
  Skeleton King
  Skywrath Mage
  Slardar
  Slark
  Sniper
  Soul Keeper
  Spectre
  Spirit Breaker
  Storm Spirit
  Sven
  Templar Assassin
  Tidehunter
  Timbersaw
  Tinker
  Tiny Treant Protector
  Troll Warlord
  Tusk
  Undying
  Ursa
  Vengeful Spirit
  Venomancer
  Viper
  Visage
  Warlock
  Weaver
  Windrunner
  Witch Doctor
  Zeus
)

hero_names.each do |hero_name|
  Hero.create(name: hero_name)
end

blue_team = Team.create(name: "Blue")
red_team = Team.create(name: "Red")

blue_team_members = %w(
  Buddy
  Biboy
  Clarissa
  Baded
  Akbar
)

red_team_members = %w(
  Nico
  Rad
  Nestor
  Eumir
  Erol
)

blue_team_members.each do |player_name|
  blue_team.players << Player.create(name: player_name)
end

red_team_members.each do |player_name|
  red_team.players << Player.create(name: player_name)
end
