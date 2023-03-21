require 'rails_helper'
RSpec.describe Post, type: :model do
  context 'checking method' do
    it "searching by title " do
      post1=Post.create({title: "India", body: "green India "})
      post2=Post.create({title: "Science", body: "launching satellite"})
      srch_post=Post.srch_post
      expect(srch_post.title).to eq "Science"
    end

    it "sorting by title" do 
      post1=Post.create({title: "India", body: "green India "})
      post2=Post.create({title: "Science", body: "launching satellite"}) 
      sort_post=Post.sort_post 
      expect(sort_post.first.title).to eq "India"
    end
  end
end


