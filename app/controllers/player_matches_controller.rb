class PlayerMatchesController < ApplicationController

  def update
    @match = Match.find(params[:match_id])
    @player_match = @match.player_matches.find(params[:id])
    @player_match.update_attributes(player_match_params)

    redirect_to :back
  end

  def create
    @match = Match.find(params[:match_id])
    @player_match = @match.player_matches.create(player_match_params)

    redirect_to :back
  end

  private

  def player_match_params
    params.require(:player_match).permit(:player_id, :hero_id,
                                         :team_id,
                                         :kills,
                                         :deaths,
                                         :assists,
                                         :gold)
  end
end
