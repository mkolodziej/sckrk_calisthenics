require 'spec_helper'

describe Timeline do
	let(:timeline) { Timeline.new }
	let(:message) { Message.new("Hello!") }
	let(:other_message) { Message.new("Bye!") }

	before do
		timeline.post(message)
		timeline.post(other_message)
	end

	it 'should include posted messages' do
		timeline.should include(message)
		timeline.should include(other_message)
	end

	it 'should not include other messages' do
		not_posted = Message.new("Unrelated")

		timeline.should_not include(not_posted)
	end
end

