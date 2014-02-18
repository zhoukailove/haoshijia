require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :username => "MyString",
      :truename => "MyString",
      :email => "MyString",
      :mobile => "MyString",
      :role => "MyString",
      :state => 1,
      :password_reset_token => "MyString",
      :avatar => "MyString",
      :descript => "MyText",
      :qq => "MyString",
      :auth_token => "MyString",
      :stores_count => 1,
      :points => 1
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_username[name=?]", "user[username]"
      assert_select "input#user_truename[name=?]", "user[truename]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_mobile[name=?]", "user[mobile]"
      assert_select "input#user_role[name=?]", "user[role]"
      assert_select "input#user_state[name=?]", "user[state]"
      assert_select "input#user_password_reset_token[name=?]", "user[password_reset_token]"
      assert_select "input#user_avatar[name=?]", "user[avatar]"
      assert_select "textarea#user_descript[name=?]", "user[descript]"
      assert_select "input#user_qq[name=?]", "user[qq]"
      assert_select "input#user_auth_token[name=?]", "user[auth_token]"
      assert_select "input#user_stores_count[name=?]", "user[stores_count]"
      assert_select "input#user_points[name=?]", "user[points]"
    end
  end
end
