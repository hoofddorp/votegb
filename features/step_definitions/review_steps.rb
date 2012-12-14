Given /^that the user is on the signup page$/ do
  visit root_path
  click_link("Sign up")
end

And /^he fills in "([^"]*)" with "([^"]*)"$/ do |name, review|
  # First try with a label
  #xpath = "//label[normalize-space(translate(.,'*',''))='#{name}' or @for='#{name}']/.."
  #if page.all(xpath).empty?
  #  # Then try with a input field
  #  xpath = "//input[@type='text' and (@id='#{name}' or @name='#{name}')]/.."
  #end
  #
  #within(xpath) do
    fill_in(name, with: review)
  #end
end

And /^he adds in "([^"]*)" with "([^"]*)"$/ do |email, review|
  ## First try with a label
  #xpath = "//label[normalize-space(translate(.,'*',''))='#{email}' or @for='#{email}']/.."
  #if page.all(xpath).empty?
  #  # Then try with a input field
  #  xpath = "//input[@type='text' and (@id='#{email}' or @email='#{email}')]/.."
  #end

  #within(xpath) do
    fill_in(email, with: review)
  #end
end

And /^he enters in "([^"]*)" with "([^"]*)"$/ do |password, review|
  # First try with a label
  #xpath = "//label[normalize-space(translate(.,'*',''))='#{password}' or @for='#{password}']/.."
  #if page.all(xpath).empty?
  #  # Then try with a input field
  #  xpath = "//input[@type='text' and (@id='#{password}' or @password='#{password}')]/.."
  #end
  #
  #within(xpath) do
    fill_in(password, with: review)
  #end
end

And /^he slots in "([^"]*)" with "([^"]*)"$/ do |field, review|
  ## First try with a label
  #xpath = "//label[normalize-space(translate(.,'*',''))='#{field}' or @for='#{field}']/.."
  #if page.all(xpath).empty?
  #  # Then try with a input field
  #  xpath = "//input[@type='text' and (@id='#{field}' or @field='#{field}')]/.."
  #end
  #
  #within(xpath) do
    fill_in(field, with: review)
  #end
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

Then /^he lands on the add a new review page$/ do
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