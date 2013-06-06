class Event < ActiveRecord::Base
  has_event_calendar
  attr_accessible :name, :start_at, :end_at, :description
end
