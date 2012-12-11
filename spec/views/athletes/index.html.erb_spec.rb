#require 'spec_helper'
#
#describe "athletes/index" do
#  before(:each) do
#    assign(:athletes, [
#      stub_model(Athlete,
#        :name => "Name",
#        :sport => "Sport",
#        :event => "Event",
#        :age => 1,
#        :sex => "Sex",
#        :gold => 2,
#        :silver => 3,
#        :bronze => 4,
#        :total_medals => 5,
#        :region => "Region",
#        :average_rating => 1.5
#      ),
#      stub_model(Athlete,
#        :name => "Name",
#        :sport => "Sport",
#        :event => "Event",
#        :age => 1,
#        :sex => "Sex",
#        :gold => 2,
#        :silver => 3,
#        :bronze => 4,
#        :total_medals => 5,
#        :region => "Region",
#        :average_rating => 1.5
#      )
#    ])
#  end
#
#  it "renders a list of athletes" do
#    render
#    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    assert_select "tr>td", :text => "Name".to_s, :count => 2
#    assert_select "tr>td", :text => "Sport".to_s, :count => 2
#    assert_select "tr>td", :text => "Event".to_s, :count => 2
#    assert_select "tr>td", :text => 1.to_s, :count => 2
#    assert_select "tr>td", :text => "Sex".to_s, :count => 2
#    assert_select "tr>td", :text => 2.to_s, :count => 2
#    assert_select "tr>td", :text => 3.to_s, :count => 2
#    assert_select "tr>td", :text => 4.to_s, :count => 2
#    assert_select "tr>td", :text => 5.to_s, :count => 2
#    assert_select "tr>td", :text => "Region".to_s, :count => 2
#    assert_select "tr>td", :text => 1.5.to_s, :count => 2
#  end
#end
