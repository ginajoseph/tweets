require 'rails_helper'

RSpec.describe "welcomes/new", :type => :view do
  before(:each) do
    assign(:welcomes, Welcome.new())
  end

  it "renders new welcomes form" do
    render

    assert_select "form[action=?][method=?]", welcomes_path, "post" do
    end
  end
end
