# Feature: Home page
#   As a visitor
#   I want to visit a home page
#   So I can learn more about the website
feature 'Home page' do

  # Scenario: Visit the home page
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "..."
  scenario 'visit the home page' do
    visit root_path
    
    #fail "Add a test to make sure we are on this page"
    #[hoang note] test any string in home page
    expect(page).to have_content("Hello! Come check all that hats we have in our store.")
  end
end
