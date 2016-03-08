require "rails_helper"

RSpec.describe "messages/show.html.haml", type: :view do
    before(:each) do
      @message = create(:message, :id => 1)
      @messages = Array.new(3, create(:messages))
    end
    it 'can render' do
      render

      assert_select "div.panel-title", :text => "lolo".to_s, :count => 4
      assert_select "div.panel-body", :text => "polo".to_s, :count => 4
    end
end
