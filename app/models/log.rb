class Log < ApplicationRecord
    belongs_to :run
    validates :distance, presence: true
    validates :pace, presence: true
    validates :date, presence: true
end

