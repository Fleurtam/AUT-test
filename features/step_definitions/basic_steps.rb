When("I visit the site") do
  visit root_path
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Given("The following articles exists") do |table|
  table.hashes.each do |article|
    Article.create!(article)
  end
end

Then(/^show me the page$/) do
  save_and_open_page
end