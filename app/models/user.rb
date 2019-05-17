class User < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: { in: 4..12 }
    validates :email, presence: true, uniqueness: true

    has_many :post
    has_many :comment
end
