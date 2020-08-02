class MatchesController < ApplicationController
  def declare_winner
    @match = Match.find(params[:id])
    @result = params[:winner]
    if ["home", "away"].include?(@result)
      @match.result = @result == "home" ? [1, 0] : [0, 1]
      @match.winner = @result
      @match.loser = @result == "home" ? "away" : "home"
      @match.status = "complete"
      @match.save!
    elsif @result = "tie"
      @match.result = [0.5, 0.5]
      @match.winner = "tie"
      @match.loser = "tie"
      @match.save!
    end
    redirect_back(fallback_location: root_path)
  end
end
