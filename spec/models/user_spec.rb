require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid' do
    build(:user).should be_valid
  end
  it 'is invalid without email' do
    build(:user_2).should_not be_valid
  end
  it 'is invalid without password' do
    build(:user_3).should_not be_valid
  end
end
