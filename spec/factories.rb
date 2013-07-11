FactoryGirl.define do
  factory :album do
    name "Winter Vacation"
  end

  factory :photo do
    url File.open(File.join(Rails.root, '/public/cookie-monster.jpg'))
  end
end