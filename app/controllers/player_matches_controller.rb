class PlayerMatchesController < ApplicationController

  def update
    @player_match = PlayerMatch.find(params[:id])
    @player_match.update_attributes(player_match_params)

    redirect_to :back
  end

  def create
    @player_match = PlayerMatch.create(player_match_params)

    redirect_to :back
  end

  private

  def player_match_params
    params.require(:player_match).permit(:player_id,
                                         :match_id,
                                         :hero_id,
                                         :team_id,
                                         :kills,
                                         :deaths,
                                         :assists,
                                         :gold)
  end
end
