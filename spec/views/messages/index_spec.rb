require "rails_helper"

RSpec.describe "messages/index.html.haml", type: :view do
    before(:each) do
      @message = create(:message)
      @messages = Array.new(3, @message)
    end
    it 'can render' do
      render
      assert_select "tr>td", :text => @message.id.to_s, :count => 3
      assert_select "tr>td", :text => "lolo".to_s, :count => 3
      assert_select "tr>td", :text => "polo".to_s, :count => 3
      assert_select "tr>td", :text => "1".to_s, :count => 3
      assert_select "tr>td", :text => "2".to_s, :count => 3
      assert_select "a", :count => 10
    end
end
