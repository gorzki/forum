require "rails_helper"

RSpec.describe "messages/show.html.haml", type: :view do
    before(:each) do
      @message = create(:message_first)
      @messages = Array.new(3, create(:message_child))
    end
    it 'can render' do
      render

      assert_select "div.panel-title", :text => "lolo".to_s, :count => 4
      assert_select "div.panel-body", :text => "polo2".to_s, :count => 1
      assert_select "div.panel-body", :text => "polo".to_s, :count => 3
    end
end
