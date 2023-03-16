require 'rails_helper'
RSpec.describe Post, type: :model do
  context 'checking method' do
    it "searching by title " do
      srch_post1=Post.create({title: "India", body: "green India "})
      srch_post2=Post.create({title: "Science", body: "launching satellite"})
      expect(srch_post1.title).to eq "India"
    end

    it "sorting by title" do 
      sort_post1=Post.create({title: "India", body: "green India "})
      sort_post2=Post.create({title: "Science", body: "launching satellite"})  
      expect(sort_post1.title).to eq "India"
    end
  end
end


