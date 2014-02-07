require 'spec_helper'

describe "Posts" do
  describe "GET /posts" do
    it "displays some posts" do
        @post = Post.create :title => 'My first Post', :body => 'Lets fineish work Quickly'
        visit posts_path
        page.should have_content 'First Video'
    end
    it "creates new post" do
        visit posts_path
        fill_in 'Post', :with => 'New Video'
        click_button 'Create Post'
        current_path.should == posts_path
        page.should have_content 'Second Video'
  end
end
