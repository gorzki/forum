require "rails_helper"

RSpec.describe "posts/index.html.haml", type: :view do
    before(:each) do
      @board = create(:board)
      @post = create(:post)
      @posts = Array.new(3, @post)
    end
    it 'can render' do
      render
      assert_select "h1", :text => "lolopolo".to_s, :count => 1
      assert_select ".panel-title", :text => "MyString".to_s, :count => 3
      assert_select ".panel-body", :text => "MyText".to_s, :count => 3
    end
end
