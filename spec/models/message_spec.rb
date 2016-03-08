require 'rails_helper'

RSpec.describe Message, type: :model do
  it 'is invalid without data' do
    message = Message.new
    message.should_not be_valid
  end 
  it 'is invalid without title' do
    build(:message, :title => nil ).should_not be_valid
  end
  it 'is invalid without description' do
    build(:message, :description => nil).should_not be_valid
  end
  it 'is invalid without sender_id' do
    build(:message, :sender_id => nil).should_not be_valid
  end
  it 'is invalid without receiver_id' do
    build(:message, :receiver_id => nil).should_not be_valid
  end
  it 'message is valid' do
     build(:message).should be_valid
  end
end
