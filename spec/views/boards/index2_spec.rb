require "rails_helper"

RSpec.describe "boards/index.html.haml", type: :view do
    before(:each) do
      @board = create(:board)
      @boards = Array.new(3, @board)
    end
    it 'can render' do
      render
      assert_select "tr>td", :text => "lolopolo".to_s, :count => 3
      assert_select "tr>td", :text => @board.id.to_s, :count => 3
    end
end
