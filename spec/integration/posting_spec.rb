require 'spec_helper'

describe "Posting to timeline" do
	it "allows posting to personal timeline" do
		alice = register_user(name: "Alice")

		post_to_timeline(alice, "hello!")

		users_timeline_should_contain(alice, "hello!")
	end

	def register_user(attributes = {})
	end
end
