class Rivalry::Rival

  attr_accessor :wins,
    :historical_average_apm,
    :historical_average_gold,
    :historical_average_kills,
    :historical_average_deaths,
    :historical_average_assists,
    :historical_average_creep_kills,
    :historical_average_creep_denies,

    :current_average_apm,
    :current_average_gold,
    :current_average_kills,
    :current_average_deaths,
    :current_average_assists,
    :current_average_creep_kills,
    :current_average_creep_denies

  def initialize(team)
    @team = team
    @name = team.name

    @historical_average_apm = team.historical_average_apm
    @historical_average_gold = team.historical_average_gold
    @historical_average_kills = team.historical_average_kills
    @historical_average_deaths = team.historical_average_deaths
    @historical_average_assists = team.historical_average_assists
    @historical_average_creep_kills = team.historical_average_creep_kills
    @historical_average_creep_denies = team.historical_average_creep_denies

    @current_average_apm = team.current_average_apm
    @current_average_gold = team.current_average_gold
    @current_average_kills = team.current_average_kills
    @current_average_deaths = team.current_average_deaths
    @current_average_assists = team.current_average_assists
    @current_average_creep_kills = team.current_average_creep_kills
    @current_average_creep_denies = team.current_average_creep_denies
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
