class Timeline
	def include?(message)
		messages.include?(message)
	end

	def post(message)
		messages << message
	end

	def display_messages(&block)
		messages.each do |message|
			message.display(&block)
		end
	end

	private

	def messages
		@messages ||= []
	end
end

