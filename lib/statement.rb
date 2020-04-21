require 'bankaccount.rb'
class Accountstatement

def statement
    array = @transactions.reverse()
    puts "date || credit || debit || balance"
    puts array.join("\n")
end
    
end
