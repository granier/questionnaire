require 'spec_helper'

describe Score do
  before :each do
    @attr = { :id_utilisateur => 0, :id_questionnaire => 0, :score => 0}
  end

  it "should be greater or equal than 0" do
    score = Score.new @attr.merge(:score => -1)
    score.should_not be_valid
  end


end
