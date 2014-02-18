require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Username/)
    rendered.should match(/Truename/)
    rendered.should match(/Email/)
    rendered.should match(/Mobile/)
    rendered.should match(/Role/)
    rendered.should match(/1/)
    rendered.should match(/Password Reset Token/)
    rendered.should match(/Avatar/)
    rendered.should match(/MyText/)
    rendered.should match(/Qq/)
    rendered.should match(/Auth Token/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
