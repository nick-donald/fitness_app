class User < ActiveRecord::Base

	has_many :workouts

	validates :email, presence: true
	validates :password, presence: true, length: { minimum: 6 }
	validates :password_confirmation, presence: true

	has_secure_password

	before_save :create_remember_token

	private
		def create_remember_token
			self.remember_token = SecureRandom.urlsafe_base64
		end
end
