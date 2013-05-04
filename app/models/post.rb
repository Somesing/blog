class Post < ActiveRecord::Base

  validates_presence_of :name, :title, :body

  has_many :comments, :dependent => :destroy
  attr_accessible :body, :created_at, :name, :title
end
