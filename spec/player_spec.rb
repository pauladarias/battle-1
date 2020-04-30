require 'player'

describe Player do 
    subject(:paula) { Player.new('Paula') }
    subject(:will) { Player.new('Will') }

    describe '#name' do 
    it "return its own name" do 
        expect(paula.name).to eq 'Paula'
    end 
    end
    
    describe '#hit_points' do
    it 'returns the hit points' do
      expect(will.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(will).to receive(:receive_damage)
      paula.attack(will)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { will.receive_damage }.to change { will.hit_points }.by(-10)
    end
  end
end 