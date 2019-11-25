class Event < ApplicationRecord
    belongs_to: User

    validates :date, :time, :location, :content, presence: true
end

