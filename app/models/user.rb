# A user can login to the application
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :account

  validates :email, uniqueness: true, presence: true, format: Devise.email_regexp

  before_validation :before_validation_actions

  private

    def before_validation_actions
      self.account ||= Account.create
    end
end
