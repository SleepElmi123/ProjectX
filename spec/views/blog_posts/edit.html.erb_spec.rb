require 'rails_helper'

RSpec.describe "blog_posts/edit", :type => :view do
  before(:each) do
    @blog_post = assign(:blog_post, BlogPost.create!(
      :name => "MyString",
      :body => "MyText",
      :positive => false,
      :profit => false,
      :networth => 1
    ))
  end

  it "renders the edit blog_post form" do
    render

    assert_select "form[action=?][method=?]", blog_post_path(@blog_post), "post" do

      assert_select "input#blog_post_name[name=?]", "blog_post[name]"

      assert_select "textarea#blog_post_body[name=?]", "blog_post[body]"

      assert_select "input#blog_post_positive[name=?]", "blog_post[positive]"

      assert_select "input#blog_post_profit[name=?]", "blog_post[profit]"

      assert_select "input#blog_post_networth[name=?]", "blog_post[networth]"
    end
  end
end
