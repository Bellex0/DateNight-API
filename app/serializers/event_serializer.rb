class EventSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :location, :content
end
