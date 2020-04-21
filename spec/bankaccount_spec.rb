require 'bankaccount.rb'
require 'timecop'

describe Bankaccount do

    it "has a starting balance of zero" do
        account = Bankaccount.new
        account.balance
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

    describe "transactions" do
        it "start statement is empty" do
        expect(subject.transactions).to eq([])
    p subject.transactions
        end
    end

    describe "#printstatement" do
        it "returns statement" do
            Timecop.freeze(Time.local(2020,04,21)) do
                account = Bankaccount.new
                4.times{account.deposit(100)}
                account.withdraw(150.32)
                expect{account.printstatement}.to output("date || credit || debit || balance\n21/04/2020 || || 150.32 || 249.68\n21/04/2020 || 100.00 || || 400.00\n21/04/2020 || 100.00 || || 300.00\n21/04/2020 || 100.00 || || 200.00\n21/04/2020 || 100.00 || || 100.00\n").to_stdout
            end
        end
    end

end





