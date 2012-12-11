Given /^that the user is logged in$/ do
  visit root_path
  click_link("Sign up")
  fill_in "Name",    with: "review"
  fill_in "Email",    with: "r@r.com"
  fill_in "Password", with: "review"
  fill_in "Password confirmation", with: "review"
  click_button("Sign up")
end

And /^he sees Signed in as review$/ do
  page.should have_content('Signed in as review')
end

And /^he visits the athlete number 1$/ do
  visit '/athletes/1'
end

Then /^he should see the option of adding a new review$/ do
  page.should have_content('Reviews')
end

When /^he clicks to add a new review$/ do
  click_button("Add a new Review")
end

And /^he lands on the add a new review page$/ do
  page.should have_content('Review summary')
end

And /^he submits the review$/ do
  fill_in "Review summary",    with: "A review"
  fill_in "Review",    with: "This is a review"
  click_button("Submit Review")
end

Then /^the review should be created$/ do
  page.should have_content('Review was successfully created.')
  page.should have_content('This is a review')
end

When /^the user deletes a review$/ do
  click_button("Delete")
end

Then /^the review should be deleted$/ do
  page.should_not have_content('This is a review')
end