require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is invalid without data' do
    post = Post.new
    post.should_not be_valid
  end
  it 'is invalid without title' do
    build(:post, :title => nil).should_not be_valid
  end
  it 'is invalid without description' do
    build(:post, :description => nil).should_not be_valid
  end
  it 'is invalid without board_id' do
    build(:post, :board => nil).should_not be_valid
  end
  it 'is valid' do
    build(:post).should be_valid
  end
end
