require 'spec_helper'

describe Message do
	it 'displays its text' do
		message = Message.new('Hello')

		expect { |block|
			message.display(&block)
		}.to yield_with_args('Hello')
	end
end
