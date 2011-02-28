require 'spec_helper'

describe Questionnaire do
  
 before :each do
    @attr = {:titre => "Exemple", :niveau_difficulte => 1, :cout => 0, :id_categorie => 0, :popularite => 0}
  end
  
  it "should require a name " do
    questionnaire = Questionnaire.new @attr.merge(:titre => "")
    questionnaire.should_not be_valid
  end
  
  it "should reject duplicate names" do
    questionnaire1 = Questionnaire.new @attr.merge(:titre => "nom titre")
    questionnaire1.save
    questionnaire2 = Questionnaire.new @attr.merge(:titre => "nom titre")
    questionnaire2.should_not be_valid
  end

  it "should have a difficulty level higher than 0" do
    questionnaire = Questionnaire.new @attr.merge(:niveau_difficulte => 0)
    user.should_not be_valid
  end
end
