class SeasonEntry < ApplicationRecord
  belongs_to :season
  belongs_to :league_membership
end
