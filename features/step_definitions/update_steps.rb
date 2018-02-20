Given("the following articles exist") do |table|
  table.hashes.each do |article|
    Article.create(article)
  end
end

Then("I will be directed to the edit page") do
  click_button('Edit')
end

Given("I visit the {string} article page") do |article_title|
  article = Article.find_by(title: article_title)
  visit article_path(article)
end


Then("I will be directed to the {string} page") do |article_title|
  article = Article.find_by(title: article_title)
  expect(page.current_path).to eq article_path(article)
end
