require 'bankaccount.rb'
require 'statement.rb'
require 'timecop'


describe Accountstatement do
    let(:transactions) {double :transactions}

    describe "#transactions" do
        it "has the correct header" do
            statement = Accountstatement.new(["ppp","ppp","ppp"])
            expect( statement.statement).to start_with("date || credit || debit || balance")
            p statement.statement
        end
    end


end
    