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
      subject.top_up(10)
      expect(subject.balance).to eq 10
    end

    it "raise an error if the top up would increase the balance beyond the maximum limit" do
      expect { subject.top_up(100) }.to raise_error "Top up failed: maximum balnce is £90"
    end
  end

  describe '#deduct' do
    it "reduces the balance on the card by the values given" do
      subject.top_up(50)
      subject.deduct(25)
      expect(subject.balance).to eq 25 
    end    
  end

  describe '#touch_in' do
    it "change the 'status' of the card to be in_journey?" do
      subject.top_up(50)
      subject.touch_in
      expect(subject.in_journey).to eq true 
    end    
  end

  describe '#touch_out' do
    it "change the 'status' of the card to be in_journey?" do
      subject.top_up(50)
      subject.touch_out
      expect(subject.in_journey).to eq false 
    end    
  end
  
end

# NameError: uninitialized constant Oystercard
# oystercard_spec.rb line 1
