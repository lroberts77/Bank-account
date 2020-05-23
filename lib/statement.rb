 class Accountstatement

    def printstatement(transaction)
        #returns the transaction array reversed, with line breaks after each string and with the header at the top
        puts "date || credit || debit || balance\n#{transaction.reverse.join("\n")}"
    end
end



