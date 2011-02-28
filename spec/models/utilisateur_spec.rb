require 'spec_helper'


describe Utilisateur do
  before :each do
    @attr = {:nom => "Exemple", :email => "foo@bar.com", :mdp => "toto", :statut => 0}
  end
  
  it "should require a name " do
    user = Utilisateur.new @attr.merge(:nom => "")
    user.should_not be_valid
  end
  
  it "should requite a name > 6 characters" do
    user = Utilisateur.new @attr.merge(:nom => "fd")
    user.should_not be_valid
  end

  it "should requite a name < 30 characters" do
    user = Utilisateur.new @attr.merge(:nom => "f" * 31)
    user.should_not be_valid
  end
  
  it "should accept a valid email address" do
    emails = %w[foo@bar.com foo@bar.foo.com foo.bar@foo.com]
    emails.each do |email|
      user = Utilisateur.new @attr.merge(:email => email)
      user.should be_valid
    end
  end
  
  it "should refuse an invalid email address" do
    emails = %w[foo bar.com fooatbar.foo.com foo.bar@]
    emails.each do |email|
      user = Utilisateur.new @attr.merge(:email => email)
      user.should_not be_valid
    end
  end


  it "should reject duplicate emails" do
  
    user1 = Utilisateur.new @attr.merge(:email => "foo@bar.com")
    user1.save
    user2 = Utilisateur.new @attr.merge(:email => "foo@bar.com")
    user2.should_not be_valid
  end
  

  it "should require a password " do
    user = Utilisateur.new @attr.merge(:mdp => "")
    user.should_not be_valid
  end
  
  it "should have password confirmation matching" do
    user = Utilisateur.new @attr.merge(:mdp => "barfoo")
    user.should_not be_valid
  end
end
