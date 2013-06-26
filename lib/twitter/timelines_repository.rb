class TimelinesRepository
	def self.for(user)
		@timelines ||= {}
		@timelines[user] ||= Timeline.new
	end

	def self.clear
		@timelines = {}
	end
end
