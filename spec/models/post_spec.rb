require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is invalid without title' do
    build(:post_title).should_not be_valid
  end
  it 'is invalid without description' do
    build(:post_description).should_not be_valid
  end
  it 'is invalid without board_id' do
    build(:post_board).should_not be_valid
  end
  it 'is valid' do
    build(:post).should be_valid
  end
end
