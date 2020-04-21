require 'bankaccount.rb'

describe Bankaccount do
    # let(account) {Bankaccount.new}

    describe "transactions" do
        it "start statement is empty" do
        expect(subject.transactions).to eq(["date || credit || debit || balance"])
    p subject.transactions
        end
    end
end

describe Accountstatement do

    describe "#transactions" do
        it "has the correct header" do
            expect(subject.statement).to eq("date || credit || debit || balance")
        end
    end
end
