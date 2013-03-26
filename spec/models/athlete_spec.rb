require 'spec_helper'

describe Athlete do
  it "has a valid factory" do
    FactoryGirl.create(:athlete).should be_valid
  end
  
  it "is invalid without a name" do
    FactoryGirl.build(:athlete, :name => nil).should_not be_valid
  end
  
  #it "should reject duplicate names" do
  #  athlete = FactoryGirl.build(:athlete)
  #FactoryGirl.build(:athlete)
  #FactoryGirl.create(:athlete).should_not be_valid
  ##FactoryGirl.build(:name, athlete: athlete, name: "Person", sport: "Sailing").should_not be_valid
  #end
    
  it "is invalid without a region" do
    FactoryGirl.build(:athlete, :region => nil).should_not be_valid
  end
  
end