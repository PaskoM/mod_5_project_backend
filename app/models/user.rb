class User < ApplicationRecord
    has_many :recipes, dependent: :destroy 
    has_many :ingredients, dependent: :destroy 
    has_many :shoppings, dependent: :destroy

    has_secure_password
    validates :username, presence: true
    validates :email, :presence => true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    validates :password, length: {minimum: 2}

end
