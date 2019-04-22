class User < ApplicationRecord
    has_secure_password
    has_many :user_sports
    has_many :sports, through: :user_sports

    validates :username, uniqueness: { case_sensitive: false }
end
