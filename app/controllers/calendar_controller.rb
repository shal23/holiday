class CalendarController < ApplicationController
  
  def index
    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i

    @shown_month = Date.civil(@year, @month)

    @first_day_of_week = 1
	#@event_strips = Event.event_strips_for_month(@shown_month, @first_day_of_week)

	start_d, end_d = Event.get_start_and_end_dates(@shown_month) # optionally pass in @first_day_of_week
	@events = Event.events_for_date_range(start_d, end_d)
	@event_strips = Event.create_event_strips(start_d, end_d, @events)

  end
  
end
