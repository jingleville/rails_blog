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
	
	describe '#subject' do
		it "returns the article title" do
			article = create(:article, title: 'test')
			expect(article.subject).to eq 'test'
		end
	end

	describe '#last_comment' do
		it 'returns thelast comment' do
			article = create(:article_with_comments)

			expect(article.last_comment.body).to eq 'commend body 3'
		end
	end
end
