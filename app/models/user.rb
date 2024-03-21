class User < ApplicationRecord
  has_many :league_memberships
  has_many :leagues, through: :league_memberships
end
