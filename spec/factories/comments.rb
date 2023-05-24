FactoryBot.define do
  factory :article do
    author "Mike"
    sequence(:body) { |n| "comment body #{n}"}
  end
end