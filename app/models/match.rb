class Match < ApplicationRecord
  belongs_to :home_member, class_name: "User"
  belongs_to :away_member, class_name: "User"
  belongs_to :battle
end
