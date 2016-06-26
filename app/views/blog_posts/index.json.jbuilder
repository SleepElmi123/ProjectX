json.array!(@blog_posts) do |blog_post|
  json.extract! blog_post, :id, :name, :body, :positive, :profit, :networth
  json.url blog_post_url(blog_post, format: :json)
end
