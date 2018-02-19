Given("I visit the {string} page") do |string|
  visit root_path
end

When("I click {string} link") do |element|
  click_link(element)
end

When("I fill in {string} with {string}") do |title, text|
  fill_in(title, :with => text)
end

When("I click {string} button") do |title|
  click_button(title)
end

Then("I should be on {string} page") do |string|
  page.current_path == string
end
