require 'rails_helper'

RSpec.feature "Adding comments" do
  before do
    begin
      @quote = Quote.create(body: "Lorem ipsum", source: "Some book", author: "somebody")
    end
  end

  scenario "user adds comment" do
    visit "quotes/#{@quote.id}"

    fill_in 'comment_body', with: "This is great"

    click_button "Create Comment"
    expect(page).to have_content("This is great")

  end
end
