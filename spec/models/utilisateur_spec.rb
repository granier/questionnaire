require 'spec_helper'

describe Utilisateur do
  pending "add some examples to (or delete) #{__FILE__}"
end



describe User do
  before :each do
    @attr = { :name => "Exemple", :email => "foo@bar.com"}
  end
  
  it "should require a name " do
    user = User.new @attr.merge(:name => "")
    user.should_not be_valid
  end
  
  it "should requite a name > 6 characters" do
    user = User.new @attr.merge(:name => "fd")
    user.should_not be_valid
  end

  it "should requite a name < 30 characters" do
    user = User.new @attr.merge(:name => "f" * 31)
    user.should_not be_valid
  end
  
  it "should accept a valid email address" do
    emails = %w[foo@bar.com foo@bar.foo.com foo.bar@foo.com]
    emails.each do |email|
      user = User.new @attr.merge(:email => email)
      user.should be_valid
    end
  end
  
  it "should refuse an invalid email address" do
    emails = %w[foo bar.com fooatbar.foo.com foo.bar@]
    emails.each do |email|
      user = User.new @attr.merge(:email => email)
      user.should_not be_valid
    end
  end


  it "should reject duplicate emails" do
    #User.create! @attr
    #user=User.new @attr
    #user.should_not be_valid

    user1 = User.new @attr.merge(:email => "foo@bar.com")
    user1.save
    user2 = User.new @attr.merge(:email => "foo@bar.com")
    user2.should_not be_valid
  end
  
  before :each do
    @attr = { :name => "Exemple", :email => "foo@bar.com", :password => "foobar", :password_confirmation => "foobar"}
  end

  it "should require a password " do
    user = User.new @attr.merge(:password => "")
    user.should_not be_valid
  end
  
  it "should have password confirmation matching" do
    user = User.new @attr.merge(:password => "barfoo")
    user.should_not be_valid
  end
end
