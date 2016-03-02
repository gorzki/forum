require 'rails_helper'

RSpec.describe Message, type: :model do
  it 'is invalid without title' do
    build(:message_title).should_not be_valid
  end
  it 'is invalid without description' do
    build(:message_description).should_not be_valid
  end
  it 'is invalid without sender_id' do
    build(:message_sender).should_not be_valid
  end
  it 'is invalid without receiver_id' do
    build(:message_receiver).should_not be_valid
  end
  it 'message is valid' do
     build(:message).should be_valid
  end
end
