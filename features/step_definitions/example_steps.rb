When /I navigate to a webpage/ do
  visit('http://www.ruby-lang.org/')
end

When /I interact with the webpage/ do
  click_on("About Ruby", match: :first)
end

When /I check the content of the webpage/ do
  page.has_content?("Ruby is a language of careful balance.")
end
