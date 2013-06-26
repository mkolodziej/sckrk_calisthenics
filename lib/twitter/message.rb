class Message
	def initialize(text)
		@text = text
	end

	def display(&block)
		yield @text
	end
end

