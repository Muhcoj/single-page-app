FactoryGirl.define do
	sequence :email do |n|
    "test#{n}@example.com"
  end
  
  factory :admin do
    first_name 'Jon'
    last_name 'Snow'
    email { generate :email } #devise does not allow it to create a admin with the same email.
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end