class Comment < ActiveRecord::Base
  belongs_to :topic
  belongs_to :post
  belongs_to :user
  has_many :labelings, as: :labelable
  has_many :labels, through: :labelings 
  
  default_scope { order('created_at DESC') }  
 
  validates :body, length: { minimum: 5 }, presence: true
  validates :user, presence: true
end  
