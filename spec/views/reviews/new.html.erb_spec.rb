require 'spec_helper'

describe "reviews/new" do
  before(:each) do
    assign(:review, stub_model(Review,
      :user_id => 1,
      :athlete_id => 1,
      :performance_rating => 1.5,
      :review_summary => "MyString",
      :review => "MyText"
    ).as_new_record)
  end

  it "renders new review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reviews_path, :method => "post" do
      assert_select "input#review_user_id", :name => "review[user_id]"
      assert_select "input#review_athlete_id", :name => "review[athlete_id]"
      assert_select "input#review_performance_rating", :name => "review[performance_rating]"
      assert_select "input#review_review_summary", :name => "review[review_summary]"
      assert_select "textarea#review_review", :name => "review[review]"
    end
  end
end
