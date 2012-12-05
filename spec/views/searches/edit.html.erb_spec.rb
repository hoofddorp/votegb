require 'spec_helper'

describe "searches/edit" do
  before(:each) do
    @search = assign(:search, stub_model(Search,
      :name => "MyString",
      :country => "MyString",
      :sport => "MyString"
    ))
  end

  it "renders the edit search form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => searches_path(@search), :method => "post" do
      assert_select "input#search_name", :name => "search[name]"
      assert_select "input#search_country", :name => "search[country]"
      assert_select "input#search_sport", :name => "search[sport]"
    end
  end
end
