require 'spec_helper'

describe "athletes/show" do
  before(:each) do
    @athlete = assign(:athlete, stub_model(Athlete,
      :name => "Name",
      :sport => "Sport",
      :event => "Event",
      :age => 1,
      :sex => "Sex",
      :gold => 2,
      :silver => 3,
      :bronze => 4,
      :total_medals => 5,
      :region => "Region",
      :average_rating => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Sport/)
    rendered.should match(/Event/)
    rendered.should match(/1/)
    rendered.should match(/Sex/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/Region/)
    rendered.should match(/1.5/)
  end
end
