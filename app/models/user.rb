class User < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { in: 4..12 }
    validates :email, presence: true, uniqueness: true
end
