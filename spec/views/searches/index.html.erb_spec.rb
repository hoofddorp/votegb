#require 'spec_helper'
#
#describe "searches/index" do
#  before(:each) do
#    assign(:searches, [
#      stub_model(Search,
#        :name => "Name",
#        :country => "Country",
#        :sport => "Sport"
#      ),
#      stub_model(Search,
#        :name => "Name",
#        :country => "Country",
#        :sport => "Sport"
#      )
#    ])
#  end
#
#  it "renders a list of searches" do
#    render
#    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    assert_select "tr>td", :text => "Name".to_s, :count => 2
#    assert_select "tr>td", :text => "Country".to_s, :count => 2
#    assert_select "tr>td", :text => "Sport".to_s, :count => 2
#  end
#end
