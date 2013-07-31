class RivalriesController < ApplicationController

  def select

  end

  def show
    team_1 = Team.find(params[:team_1])
    team_2 = Team.find(params[:team_2])
    @vs_team = Rivalry.new(team_1, team_2)
  end

end
