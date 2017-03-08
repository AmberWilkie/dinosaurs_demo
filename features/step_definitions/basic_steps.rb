Given(/^the following dinosaur exist:$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:dinosaur, hash)
  end
end

Given(/^I visit "([^"]*)" dinosaur's page$/) do |dinosaur_name|
  dinosaur = Dinosaur.where(name: dinosaur_name).first
  visit dinosaur_path(dinosaur)
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I shouldn't see "([^"]*)"$/) do |content|
  expect(page).not_to have_content content
end

When(/^I click on "([^"]*)"$/) do |link_text|
  find_link(link_text).click
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, with: value)
end

When(/^I click "([^"]*)"$/) do |button|
  click_button button
end

Then(/^I should be on "([^"]*)" dinosaur's page$/) do |dinosaur_name|
  dinosaur = Dinosaur.where(name: dinosaur_name).first
  expect(page.current_path).to eq dinosaur_path(dinosaur)
end
