# require 'bankaccount.rb'
class Accountstatement

    def initialize(transactions)

        @transactions = transactions

    end

    def statement

        array = @transactions
        
        return "date || credit || debit || balance\n#{(array.reverse).join("\n")}"
    end
    
end
