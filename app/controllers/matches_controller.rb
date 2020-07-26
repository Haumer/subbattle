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

  def declare_winner
    @match = Match.find(params[:id])
    @winner = params[:winner]
    @match.winner = @winner
    @match.loser = @winner == "home" ? "away" : "home"
    @match.status = "complete"
    @match.save!
    redirect_back(fallback_location: root_path)
  end
end
