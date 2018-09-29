class AdminUser < ApplicationRecord
	acts_as_paranoid
    has_secure_password
    after_create :generate_token
    validates_presence_of :password, on: :create
    validates :email, presence: true, uniqueness: true

  def generate_token
  	self.admin_token = SecureRandom.hex
    self.email = self.email.downcase
    self.save(validate: false)
  end
end
