When /I navigate to a webpage/ do
  visit('http://www.ruby-lang.org/')
end

When /I interact with the webpage/ do
  click_on("Download", match: :first)
end

When /I check the content of the webpage/ do
  page.has_content?("Here you can get the latest Ruby distributions in your favorite flavor.")
end
