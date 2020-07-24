class MatchesController < ApplicationController

  def declare_home_winner
    @match = Match.find(params[:id])
    @match.winner = "home"
    @match.loser = "away"
    @match.status = "complete"
    @match.save!
    redirect_to root_path
  end

  def declare_away_winner
    @match = Match.find(params[:id])
    @match.winner = "away"
    @match.loser = "home"
    @match.status = "complete"
    @match.save!
    redirect_to root_path
  end
end
