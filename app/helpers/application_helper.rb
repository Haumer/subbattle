module ApplicationHelper
  def match_complete?(match)
    match.status == "complete"
  end

  def status_tags(match, player)
    match_complete?(match) &&
    player == match.winner ? "match-winner" : match_playing?(match)
  end

  def match_playing?(match)
    match.status == "playing" ? "" :  "match-loser"
  end
end
