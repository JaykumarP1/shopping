require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :payment_mode => "Payment Mode"
      ),
      Order.create!(
        :payment_mode => "Payment Mode"
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "Payment Mode".to_s, :count => 2
  end
end
