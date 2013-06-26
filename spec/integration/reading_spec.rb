require 'spec_helper'

describe "Reading timelines" do
	it "allows Bob to read Alice's timeline" do
		alice = register_user("Alice")
		bob = register_user("Bob")
		hello = Message.new("Hello")

		post_to_timeline(alice, hello)	

		should_see_messages(by: alice, 
												as: bob,
											  messages: ["Hello"])
	end

	def should_see_messages(options = {})
		author = options[:by]
		messages = options[:messages]

		timeline = TimelinesRepository.for(author)

		expect { |block|
			timeline.display_messages(&block)
		}.to yield_successive_args(*messages)
	end
end
