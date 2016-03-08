require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is invalid without data' do
    user = User.new
    user.should_not be_valid
  end
  it 'is valid' do
    build(:user).should be_valid
  end
  it 'is invalid without email' do
    build(:user, :email => nil).should_not be_valid
  end
  it 'is invalid without password' do
    build(:user, :password => nil).should_not be_valid
  end
end
