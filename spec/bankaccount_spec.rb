require 'bankaccount.rb'
require 'timecop'

describe Bankaccount do

    describe "#balance" do
        it "has a starting balance of zero" do
            account = Bankaccount.new
            account.balance
            expect(subject.balance).to eq(0)
        end
    end

    describe "#deposits" do
        it{is_expected.to respond_to(:deposit).with(1).argument}
        it "can deposit money" do
         expect{subject.deposit (100)}.to change{subject.balance}.by 100
        end
        it "increases a users balance" do
            account = Bankaccount.new
            account.deposit(200)
            expect(account.balance).to eq(200)
        end
    end
    
    describe "#withdrawal" do
        it{is_expected.to respond_to(:withdraw).with(1).argument}
        it "can withdraw money" do
            subject.deposit(400)
            expect{subject.withdraw (200)}.to change{subject.balance}.by -200
        end
        it "decreases a users balance" do
            account = Bankaccount.new
            account.deposit(500)
            account.withdraw(200)
            expect(account.balance).to eq(300)
        end
        it "a users balance cannot go below zero" do
            account = Bankaccount.new
            account.withdraw(1)
            expect(account.balance).to eq(0)
        end
    end

    describe "#transactions" do
        it "start statement is empty" do
        expect(subject.transactions).to eq([])
        end
    end

    describe "#printstatement" do
        it "returns statement" do
            Timecop.freeze(Time.local(2020,04,21)) do
                statement_double = double :statement, printstatement: "date || credit || debit || balance"
                account = Bankaccount.new(statement_double)
                expect(account.outputstatement).to eq("date || credit || debit || balance")
            end
        end
    end
end





