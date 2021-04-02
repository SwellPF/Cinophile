class User < ApplicationRecord
    has_secure_password

    has_many :comments
    has_many :movies, through: :comments
    validates :name, :email, :password, presence: true
    validates :email, uniqueness: true

    def self.from_omniauth(auth)
        binding.pry
        User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.name = auth['info']['name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(12)
            binding.pry
            end
    end
end
