require "rails_helper"

RSpec.describe "posts/show.html.haml", type: :view do
    before(:each) do
      @post = create(:post)
    end
    it 'can render' do
      render
      assert_select "h1", :text => "MyString".to_s, :count => 1
      assert_select "h2", :text => "MyText".to_s, :count => 1
    end
end
