class User < ApplicationRecord
    has_many :posts

    has_secure_password

    validates_presence_of :username
    validates_uniqueness_of :username
end
