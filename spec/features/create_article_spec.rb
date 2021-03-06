require 'rails_helper'

RSpec.feature "Creating quote" do
  scenario "user creates new quote" do
    visit "/"

    click_link "New Quote"


    fill_in "Body", with: "Just another quote"
    fill_in "Source", with: "Somebody said that"
    fill_in "Author", with: "the book"

    click_button "Create Quote"

    expect(page).to have_content("Quote has been added")
    expect(page).to have_content("Just another quote")
    expect(page).to have_content("Somebody said that")
    expect(page).to have_content("the book")
    expect(page.current_path).to eq(quotes_path)
  end
end
