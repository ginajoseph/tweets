require 'rails_helper'

RSpec.describe "welcomes/show", :type => :view do
  before(:each) do
    @welcome = assign(:welcomes, Welcome.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
