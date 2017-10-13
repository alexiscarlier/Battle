require_relative '../../lib/player.rb'

describe Player do
  subject(:player_1) { Player.new("Tom") }
  subject(:player_2) { Player.new("Alexi") }

  describe "name" do
    it 'returns the name' do
      expect(player_1.name).to eq 'Tom'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player_1.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { player_1.receive_damage }.to change { player_1.hit_points }.by(-10)
    end
  end
end
