feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    #click_button "Attack"
    click_link "Attack"
    expect(page).not_to have_content "Paula: 60HP"
    expect(page).to have_content 'Paula: 50HP'
  end
end