require 'player'
describe Player do

  let(:tom) { described_class.new("Tom") }

  describe '#enter_name' do
    it 'returns the name I have entered' do
      expect(tom.name).to eq("Tom")
    end
  end

end
