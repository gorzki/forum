require 'rails_helper'

RSpec.describe Message, type: :model do
  it 'is invalid without title' do
    message = Message.new
    message.should_not be_valid
  end
end
