class Battle < ApplicationRecord
  belongs_to :home_team, class_name: "Team"
  belongs_to :away_team, class_name: "Team"
  has_many :matches

  def score_up_to_now(nr_of_matches_played)
    return unless nr_of_matches_played

    difference = Hash.new(0)
    matches.all.first(nr_of_matches_played).each do |match|

      difference[:home] += match.result.first.zero? ? -1 : match.result.first
      difference[:away] += match.result.last.zero? ? -1 : match.result.last
    end
    difference
  end
end
