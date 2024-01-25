class AccountMsJf < ApplicationRecord
    validates :username, :password, :email, presence: true, uniqueness: true
    validates :username, length: {minimum: 5}
    validates :password, length: {minimum: 6}
end
