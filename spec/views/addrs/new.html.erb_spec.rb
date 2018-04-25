require 'rails_helper'

RSpec.describe "addrs/new", type: :view do
  before(:each) do
    assign(:addr, Addr.new(
      :door_no => "MyString",
      :street => "MyText",
      :city => "MyString",
      :state => "MyString",
      :code => "MyString",
      :orderable => nil
    ))
  end

  it "renders new addr form" do
    render

    assert_select "form[action=?][method=?]", addrs_path, "post" do

      assert_select "input[name=?]", "addr[door_no]"

      assert_select "textarea[name=?]", "addr[street]"

      assert_select "input[name=?]", "addr[city]"

      assert_select "input[name=?]", "addr[state]"

      assert_select "input[name=?]", "addr[code]"

      assert_select "input[name=?]", "addr[orderable_id]"
    end
  end
end
