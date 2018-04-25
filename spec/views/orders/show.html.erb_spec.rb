require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :payment_mode => "Payment Mode"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Payment Mode/)
  end
end
