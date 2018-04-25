require 'rails_helper'

RSpec.describe "addrs/index", type: :view do
  before(:each) do
    assign(:addrs, [
      Addr.create!(
        :door_no => "Door No",
        :street => "MyText",
        :city => "City",
        :state => "State",
        :code => "Code",
        :orderable => nil
      ),
      Addr.create!(
        :door_no => "Door No",
        :street => "MyText",
        :city => "City",
        :state => "State",
        :code => "Code",
        :orderable => nil
      )
    ])
  end

  it "renders a list of addrs" do
    render
    assert_select "tr>td", :text => "Door No".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
