require 'rails_helper'

RSpec.describe "addrs/show", type: :view do
  before(:each) do
    @addr = assign(:addr, Addr.create!(
      :door_no => "Door No",
      :street => "MyText",
      :city => "City",
      :state => "State",
      :code => "Code",
      :orderable => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Door No/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(//)
  end
end
