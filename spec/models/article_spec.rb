# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  text       :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "rails_helper"

describe Article do
	describe 'validations' do
		it { should validate_presence_of :title }
		it { should validate_presence_of :text }
	end

	describe 'associations' do
		it { should have_many :comments }
	end
	
end
