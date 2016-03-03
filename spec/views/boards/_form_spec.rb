require "rails_helper"

RSpec.describe "boards/_form.html.haml", type: :view do
    before(:each) do
      @board = Board.new
    end
    it 'can render' do
      render
      assert_select "form input", :count => 3

    end
end
