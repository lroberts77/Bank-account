 class Accountstatement

    def printstatement(transaction)
        puts "date || credit || debit || balance\n#{transaction.reverse.join("\n")}"
    end
end



