class VersusController < ApplicationController

  def select

  end

  def team
    team_1 = Team.find(params[:team_1])
    team_2 = Team.find(params[:team_2])
    @vs_team = TeamVsTeam.new(team_1, team_2)
  end

end
