require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :username => "Username",
        :truename => "Truename",
        :email => "Email",
        :mobile => "Mobile",
        :role => "Role",
        :state => 1,
        :password_reset_token => "Password Reset Token",
        :avatar => "Avatar",
        :descript => "MyText",
        :qq => "Qq",
        :auth_token => "Auth Token",
        :stores_count => 2,
        :points => 3
      ),
      stub_model(User,
        :username => "Username",
        :truename => "Truename",
        :email => "Email",
        :mobile => "Mobile",
        :role => "Role",
        :state => 1,
        :password_reset_token => "Password Reset Token",
        :avatar => "Avatar",
        :descript => "MyText",
        :qq => "Qq",
        :auth_token => "Auth Token",
        :stores_count => 2,
        :points => 3
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Truename".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Password Reset Token".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Qq".to_s, :count => 2
    assert_select "tr>td", :text => "Auth Token".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
