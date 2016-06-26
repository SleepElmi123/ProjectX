class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :name
      t.text :body
      t.boolean :positive
      t.boolean :profit
      t.integer :networth

      t.timestamps null: false
    end
  end
end
