require 'rails_helper'

RSpec.describe "blog_posts/show", :type => :view do
  before(:each) do
    @blog_post = assign(:blog_post, BlogPost.create!(
      :name => "Name",
      :body => "MyText",
      :positive => false,
      :profit => false,
      :networth => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
  end
end
