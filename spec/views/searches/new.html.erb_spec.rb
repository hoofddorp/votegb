require 'spec_helper'

describe "searches/new" do
  before(:each) do
    assign(:search, stub_model(Search,
      :name => "MyString",
      :country => "MyString",
      :sport => "MyString"
    ).as_new_record)
  end

  it "renders new search form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => searches_path, :method => "post" do
      assert_select "input#search_name", :name => "search[name]"
      assert_select "input#search_country", :name => "search[country]"
      assert_select "input#search_sport", :name => "search[sport]"
    end
  end
end
