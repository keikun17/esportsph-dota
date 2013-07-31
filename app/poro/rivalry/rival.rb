class Rivalry::Rival
  attr_accessor :wins
  attr_accessor :losses

  def initialize(team)
    @team = team
    @name = team.name
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
