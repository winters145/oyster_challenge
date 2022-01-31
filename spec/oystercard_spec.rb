require_relative '../lib/oystercard'

describe Oystercard do
  
  describe '#balance' do
    it "a new instance of oystercard has a balance of zero" do
       oystercard = Oystercard.new 
       expect(oystercard.balance).to eq 0  
    end
  end   
  
  describe '#top_up' do
    it "increases the balance on the card by the value given" do 
      subject.top_up(100)
      expect(subject.balance).to eq 100
    end
  end
  
end

# NameError: uninitialized constant Oystercard
# oystercard_spec.rb line 1
