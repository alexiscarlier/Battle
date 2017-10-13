feature 'Attack' do
  scenario 'Confirms attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Tom attacked Alexi"
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link "OK"
    expect(page).not_to have_content 'Alexi: 60HP'
    expect(page).to have_content 'Alexi: 50HP'
  end
  # we test it this way because we're testing the interface/feature
end
