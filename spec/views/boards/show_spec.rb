require "rails_helper"

RSpec.describe "boards/show.html.haml", type: :view do
    before(:each) do
      @board = create(:board)
      @post = create(:post)
      @posts = Array.new(3, @post)
    end
    it 'can render' do
      render
      assert_select "h1", :text => "lolopolo".to_s, :count => 1
      assert_select "tr>td", :text => "MyString".to_s, :count => 3
      assert_select "a", :text => "Nowy post".to_s, :count =>1
      assert_select "a", :text => "Back".to_s, :count =>1
    end
end
