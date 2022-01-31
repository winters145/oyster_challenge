require_relative '../lib/oystercard'

describe Oystercard do
  describe '#balance' do
    it "a new instance of oystercard has a balance of zero" do
       oystercard = Oystercard.new 
       expect(oystercard.balance).to eq 0  
    end
  end       
end

# NameError: uninitialized constant Oystercard
# oystercard_spec.rb line 1
