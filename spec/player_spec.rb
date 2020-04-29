require 'player'

describe Player do 
    subject(:paula) { Player.new('Paula') }

    describe '#name' do 
    it "return its own name" do 
        expect(paula.name).to eq 'Paula'
    end 
end 
end 