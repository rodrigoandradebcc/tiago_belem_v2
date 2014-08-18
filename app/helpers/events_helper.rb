module EventsHelper
	def event_dateform(date)
		date.strftime("%d/%m/%Y")
	end

	def form_hora(date)
		date.strftime("%I:%MH")
	end
end
