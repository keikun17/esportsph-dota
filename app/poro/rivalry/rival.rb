class Rivalry::Rival

  attr_accessor :wins, :average_apm

  def initialize(team)
    @team = team
    @name = team.name
    @average_apm = team.players.map(&:average_apm).sum / team.players.size
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
