feature 'Switch turns' do
  context 'seeing current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Tom's turn"
    end
    scenario 'after player 1 attacks' do
      sign_in_and_play
      click_button 'Attack'
      click_link 'OK'
      expect(page).not_to have_content "Tom's turn"
      expect(page).to have_content "Alexi's turn"
    end
  end
end
