class Event < ApplicationRecord
    belongs_to :user

    validates :date, :time, :location, :content, presence: true
end

