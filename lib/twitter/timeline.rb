class Timeline
	def include?(message)
		messages.include?(message)
	end

	def post(message)
		messages << message
	end

	private

	def messages
		@messages ||= []
	end
end

