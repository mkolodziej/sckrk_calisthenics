require 'capybara/rspec'

require_relative '../lib/twitter.rb'

RSpec.configure do |c|
	c.before do
		TimelinesRepository.clear
	end
end

def register_user(attributes = {})
	RegistersUsers.register(attributes)
end

def post_to_timeline(user, message)
	user_timeline = TimelinesRepository.for(user)
	user_timeline.post(message)
end
