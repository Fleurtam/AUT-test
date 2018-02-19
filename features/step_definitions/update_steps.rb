Given("The following article exists") do |table|
  table.hashes.each do |article|
    Article.create(article)
  end
end

Given("We have written a article about {string}") do |title|
  @article = Article.first
  expect(@article.title).to eq title
end

Then("I will be directed to the edit page") do
  click_button('Edit')
end

Given("visit the {string} page") do |string|
  visit "/articles/#{@article.id}"

end


Then("I will be directed to the {string} page") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end