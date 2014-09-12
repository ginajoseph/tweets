require 'rails_helper'

RSpec.describe "welcomes/edit", :type => :view do
  before(:each) do
    @welcome = assign(:welcomes, Welcome.create!())
  end

  it "renders the edit welcomes form" do
    render

    assert_select "form[action=?][method=?]", welcome_path(@welcome), "post" do
    end
  end
end
