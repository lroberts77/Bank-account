require 'bankaccount.rb'

describe Bankaccount do

    it "has a starting balance of zero" do
        expect(subject.balance).to eq(0)
    end

    describe "#deposits" do
        it{is_expected.to respond_to(:deposit).with(1).argument}
        it "can deposit money" do
         expect{subject.deposit (100)}.to change{subject.balance}.by 100
        end
    end
    
    describe "#withdrawal" do
        it{is_expected.to respond_to(:withdraw).with(1).argument}
        it "can withdraw money" do
         expect{subject.withdraw (100)}.to change{subject.balance}.by -100
        end
    end

end





