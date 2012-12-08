require 'spec_helper'

describe "athletes/new" do
  before(:each) do
    assign(:athlete, stub_model(Athlete,
      :name => "MyString",
      :sport => "MyString",
      :event => "MyString",
      :age => 1,
      :sex => "MyString",
      :gold => 1,
      :silver => 1,
      :bronze => 1,
      :total_medals => 1,
      :region => "MyString",
      :average_rating => 1.5
    ).as_new_record)
  end

  it "renders new athlete form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => athletes_path, :method => "post" do
      assert_select "input#athlete_name", :name => "athlete[name]"
      assert_select "input#athlete_sport", :name => "athlete[sport]"
      assert_select "input#athlete_event", :name => "athlete[event]"
      assert_select "input#athlete_age", :name => "athlete[age]"
      assert_select "input#athlete_sex", :name => "athlete[sex]"
      assert_select "input#athlete_gold", :name => "athlete[gold]"
      assert_select "input#athlete_silver", :name => "athlete[silver]"
      assert_select "input#athlete_bronze", :name => "athlete[bronze]"
      assert_select "input#athlete_total_medals", :name => "athlete[total_medals]"
      assert_select "input#athlete_region", :name => "athlete[region]"
      assert_select "input#athlete_average_rating", :name => "athlete[average_rating]"
    end
  end
end
