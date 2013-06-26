require 'spec_helper'

describe TimelinesRepository do
	it "returns different timelines for different users" do
		bob = User.new("Bob")
		alice = User.new("Alice")

		first_timeline = TimelinesRepository.for(bob)
		second_timeline = TimelinesRepository.for(alice)

		first_timeline.should_not eq(second_timeline)
	end

	it "returns the same timeline for a user every time" do
		bob = User.new("Bob")

		first_timeline = TimelinesRepository.for(bob)
		second_timeline = TimelinesRepository.for(bob)

		first_timeline.should eq(second_timeline)
	end
end

class User
	def initialize(name)
	end
end
