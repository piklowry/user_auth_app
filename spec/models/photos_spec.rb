require 'spec_helper'

describe Photo do
	let(:photo) { Photo.new }

	it 'should have a photo' do
		photo.should_not eq(true)
	end
end
