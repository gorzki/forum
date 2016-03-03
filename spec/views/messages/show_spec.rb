require "rails_helper"

RSpec.describe "messages/show.html.haml", type: :view do
    before(:each) do
      @message = create(:message, :id => 1)
      @messages = Array.new(2, create(:messages))
    end
    it 'can render' do
      render
      assert_select "div", :text => "lolo".to_s, :count => 3
      assert_select "div", :text => "polo".to_s, :count => 3
    end
end
