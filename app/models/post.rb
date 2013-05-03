class Post < ActiveRecord::Base
  attr_accessible :body, :created_at, :name, :title
end
