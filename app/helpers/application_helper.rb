module ApplicationHelper
  def match_complete?(match)
    match.status == "complete"
  end

  def status_tags(match, player)
    match_complete?(match) &&
    player == match.winner ? "match-winner" : "match-loser"
  end
end
