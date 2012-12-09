require 'spec_helper'

describe "reviews/index" do
  before(:each) do
    assign(:reviews, [
      stub_model(Review,
        :user_id => 1,
        :athlete_id => 2,
        :performance_rating => 1.5,
        :review_summary => "Review Summary",
        :review => "MyText"
      ),
      stub_model(Review,
        :user_id => 1,
        :athlete_id => 2,
        :performance_rating => 1.5,
        :review_summary => "Review Summary",
        :review => "MyText"
      )
    ])
  end

  it "renders a list of reviews" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Review Summary".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
