class League < ApplicationRecord
  has_many :league_memberships
  has_many :users, through: :league_memberships

  has_many :seasons
end
