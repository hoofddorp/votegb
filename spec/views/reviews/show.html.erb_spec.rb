#require 'spec_helper'
#
#describe "reviews/show" do
#  before(:each) do
#    @review = assign(:review, stub_model(Review,
#      :user_id => 1,
#      :athlete_id => 2,
#      :performance_rating => 1.5,
#      :review_summary => "Review Summary",
#      :review => "MyText"
#    ))
#  end
#
#  it "renders attributes in <p>" do
#    render
#    # Run the generator again with the --webrat flag if you want to use webrat matchers
#    rendered.should match(/1/)
#    rendered.should match(/2/)
#    rendered.should match(/1.5/)
#    rendered.should match(/Review Summary/)
#    rendered.should match(/MyText/)
#  end
#end
