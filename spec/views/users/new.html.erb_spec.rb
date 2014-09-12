require 'rails_helper'

RSpec.describe "users/new", :type => :view do
  before(:each) do
    assign(:user, User.new(
      :type => "",
      :password => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :title => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_type[name=?]", "user[type]"

      assert_select "input#user_password[name=?]", "user[password]"

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_title[name=?]", "user[title]"
    end
  end
end
