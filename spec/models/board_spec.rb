require 'rails_helper'

RSpec.describe Board, type: :model do
  it 'is invalid without title' do
    board = Board.new
    board.should_not be_valid
  end
  it 'is valid with title' do
    build(:board).should be_valid
  end

end
