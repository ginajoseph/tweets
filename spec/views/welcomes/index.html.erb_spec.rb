require 'rails_helper'

RSpec.describe "welcome/index", :type => :view do
  before(:each) do
    assign(:welcome, [
      Welcome.create!(),
      Welcome.create!()
    ])
  end

  it "renders a list of welcome" do
    render
  end
end
