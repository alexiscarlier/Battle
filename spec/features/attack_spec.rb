feature 'Attack' do
  scenario 'Confirms attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Tom attacked Alexi"
  end
end
