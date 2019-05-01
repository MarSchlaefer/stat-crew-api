class Team < ApplicationRecord
    has_many :game_teams
    has_many :games, through: :game_teams
    has_many :coaches
    has_many :players
end
