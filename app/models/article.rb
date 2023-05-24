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
class Article < ApplicationRecord
	validates :title, presence: true
	validates :text, presence: true
	has_many :comments

	def subject
		title
	end
end
