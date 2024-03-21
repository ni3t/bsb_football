class LeagueMembership < ApplicationRecord
  belongs_to :league
  belongs_to :user

  has_many :season_entries
end
