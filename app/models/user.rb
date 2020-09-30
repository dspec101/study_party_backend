class User < ApplicationRecord
    # has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :answers
    has_many :comments
    has_many :questions, through: :answers

end