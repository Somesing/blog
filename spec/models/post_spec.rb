require 'spec_helper'

describe Post do
  it "is invalid without a name" do
    Post.new(:name => nil).should_not be_valid
  end

  it "is invalid without a title" do
    Post.new(:title => nil).should_not be_valid
  end
    
  it "is invalid without a body" do
    Post.new(:body => nil).should_not be_valid
  end

  it "is valid with a name, title, and body!" do
    Post.new(:name => "John Doe", :title => "Hello World", :body => "I am John Doe and this is my first post!").should be_valid
  end  
  
end
