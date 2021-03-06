require 'game'

describe Game do
  let(:player_1) { double(:player_1) }
  let(:player_2) { double(:player_2) }
  subject(:game) { Game.new(player_1, player_2) }

  describe '#attack' do
    it 'player receives damage following an attack' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe '#switches_turn' do
    it 'switches the turn' do
      game.switches_turns
      expect(game.current_turn).to eq player_2
    end
  end 

end
