# An account is the central bit that connects users to content
class Account < ApplicationRecord
  has_many :users, dependent: :destroy
end
