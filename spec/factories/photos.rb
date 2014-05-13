require 'spec_helper'

FactoryGirl.define do

	factory :photo do |p|
		p.name { Faker::Name.name }
		p.photo_pic { Faker::Name.name }
	end

	
end