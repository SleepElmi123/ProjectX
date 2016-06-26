require 'rails_helper'

RSpec.describe "blog_posts/index", :type => :view do
  before(:each) do
    assign(:blog_posts, [
      BlogPost.create!(
        :name => "Name",
        :body => "MyText",
        :positive => false,
        :profit => false,
        :networth => 1
      ),
      BlogPost.create!(
        :name => "Name",
        :body => "MyText",
        :positive => false,
        :profit => false,
        :networth => 1
      )
    ])
  end

  it "renders a list of blog_posts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
