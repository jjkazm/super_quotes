require 'rails_helper'

RSpec.feature "Adding comments" do
  before(:all) do
      @quote = create(:quote)
  end

  scenario "user adds comment" do
    visit "quotes/#{@quote.id}"

    fill_in 'comment_body', with: "This is great"

    click_button "Create Comment"
    expect(page).to have_content("This is great")

  end
end
