require "rails_helper"

RSpec.describe "boards/index.html.haml", type: :view do
    before(:each) do
      @board = create(:board)
      @boards = Array.new(2, @board)
    end
    it 'can render' do
      render
      expect(rendered).to include("lolopolo")
      expect(rendered).not_to include("no_content")
    end
end
