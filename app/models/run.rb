class Run < ApplicationRecord
    has_many :logs
    validates :category, presence: true
end
