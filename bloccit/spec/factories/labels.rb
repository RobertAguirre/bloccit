FactoryGirl.define do
   factory :label do
     name RandomData.random_name
     factory :label2 do
       name RandomData.random_name
     end
   end
 end