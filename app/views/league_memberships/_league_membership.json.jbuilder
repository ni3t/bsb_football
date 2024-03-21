json.extract! league_membership, :id, :league_id, :user_id, :created_at, :updated_at
json.url league_membership_url(league_membership, format: :json)
