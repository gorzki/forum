require "rails_helper"

RSpec.describe "posts/_form.html.haml", type: :view do
    before(:each) do
      @board = create(:board)
      @post = Post.new
    end
    it 'can render' do
      render
      assert_select "form input", :count => 6

    end
end
