
Given("I click on {string}") do |title_text|
 click_link_or_button(title_text)
end

Given("I visit the {string} article") do |string|
 article=Article.find_by(title: string)
 visit article_path(article)
end
