# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  email      :string
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "rails_helper"

describe Contact do
	it { should validate_presence_of :email }

	it { should validate_presence_of :message }
end
