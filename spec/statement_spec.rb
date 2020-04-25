require 'bankaccount.rb'
require 'statement.rb'
require 'timecop'

describe Accountstatement do

    describe "#printstatement" do
        it "has the correct header" do
            statement = Accountstatement.new
            expect{statement.printstatement(["123","456","789"])}.to output("date || credit || debit || balance\n789\n456\n123\n").to_stdout
        end
    end
end




       
    