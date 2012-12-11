Given /^the user is on the home page$/ do
  visit '/admins/sign_in'
  fill_in "Email",    with: "admin@admin.com"
  fill_in "Password", with: "password"
  click_button("Sign in")
  visit "/home"
end

And /^he sees the search box$/ do
 page.should have_content('Search')
end

When /^he searches for athletes called Jones$/ do
  fill_in "Name",    with: "Jones"
  click_button("Create Search")
end

Then /^he should see the result as Jones$/ do
  page.should have_content('Jones')
end