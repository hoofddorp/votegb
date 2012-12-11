Given /^a guest visits the home page$/ do
  visit root_path
end

And /^he should see a sign in link$/ do
  page.should have_content('Login')
end

Given /^a guest clicks Athletes link$/ do
  visit athletes_path
  #click_link("Athletes")
end

Then /^he should see a list of athletes$/ do
  page.should have_content('Team GB athletes')
end

When /^he clicks show link$/ do
  visit "/athletes/1"
  #page.all("show")[1].click
  #click_link("Show")
end

And /^he should see athlete region$/ do
  page.should have_content('Region')
end

Then /^he should not be able to submit a review$/ do
  page.should have_content('Please sign in to add a review')
end