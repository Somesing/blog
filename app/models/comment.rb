class Comment < ActiveRecord::Base

  validates_presence_of :commentor, :body

  belongs_to :post
  attr_accessible :body, :commentor
end
