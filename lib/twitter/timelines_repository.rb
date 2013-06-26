class TimelinesRepository
	def self.for(user)
		@timelines ||= {}
		@timelines[user] ||= Timeline.new
	end
end
