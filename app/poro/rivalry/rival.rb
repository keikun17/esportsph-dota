class Rivalry::Rival

  attr_accessor :wins,
    :average_apm,
    :average_gold,
    :average_kills, :average_deaths, :average_assists,
    :average_creep_kills, :average_creep_denies

  def initialize(team)
    @team = team
    @name = team.name
    @average_apm = team.historical_average_apm
    @average_gold = team.historical_average_gold
    @average_kills = team.historical_average_kills
    @average_deaths = team.historical_average_deaths
    @average_assists = team.historical_average_assists
    @average_creep_kills = team.historical_average_creep_kills
    @average_creep_denies = team.historical_average_creep_denies
  end

  def id
    @team.id
  end

  def name
    @name
  end

  def matches
    @team.matches
  end

end
