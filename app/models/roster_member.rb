class RosterMember < ApplicationRecord
  belongs_to :roster
  belongs_to :user, optional: true
end
