require 'rails_helper'

RSpec.describe "welcome/show", :type => :view do
  before(:each) do
    @welcome = assign(:welcome, Welcome.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
