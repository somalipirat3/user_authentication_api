class User < ApplicationRecord

    has_secure_password

    validates :email, presence: true, uniqueness: true
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
	validates :username, presence: true, uniqueness: true
	validates :password,
	        length: { minimum: 6 },
            if: -> { new_record? || !password.nil? }
    
    has_many :tokens , dependent: :destroy


    def full_name
        "#{self.first_name}  #{self.middle_name} #{self.last_name}"
    end
end
