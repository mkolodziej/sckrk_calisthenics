require 'spec_helper'

describe "Posting to timeline" do
	it "allows posting to personal timeline" do
		alice = register_user(name: "Alice")
		message = Message.new("hello!")

		post_to_timeline(alice, message)

		users_timeline_should_contain(alice, message)
	end

	def users_timeline_should_contain(user, message)
		user_timeline = TimelinesRepository.for(user)
		user_timeline.should include(message)
	end
end
