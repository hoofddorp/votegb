Given /^the admin is on the home page$/ do
  visit root_path
end

Then /^he should see the admin sign in link$/ do
  page.should have_content('Login as administrator')
end

When /^he clicks the admin link$/ do
  click_link("Login as administrator")
end

Then /^he should be on the admin sign in page$/ do
  page.should have_content('Sign in')
end

When /^he signs in as admin$/ do
  fill_in "Email",    with: "admin@admin.com"
  fill_in "Password", with: "password"
  click_button("Sign in")
end

Then /^he should be logged in$/ do
  page.should have_content('Signed in as admin@admin.com')
end