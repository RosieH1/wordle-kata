require_relative '../wordle'

describe '#wordle' do 
    it "returns numbers only" do
        expect(wordle('a', 'b')).not_to eq(/\D/)
    end
    it "returns '0' for single mismatching characters" do
        expect(wordle('a', 'b')).to eq('0')
    end
    it "returns '2' for single matching characters" do
        expect(wordle('a', 'a')).to eq('2')
    end
end