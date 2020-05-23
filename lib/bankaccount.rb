require 'Date'
require_relative 'statement.rb'
class Bankaccount

    attr_reader :balance, :transactions
    @date = DateTime.now.strftime "%d/%m/%Y"

    def initialize(statement = Accountstatement.new)
        @statement = statement
        @balance = 0
        @transactions = []
    end

    def deposit(amount)
        @balance += amount
        #pushes a deposit string pre formatted into the transactions array
        @transactions << "#{@date} || #{"%.02f" % amount} || || #{"%.02f" % @balance}"
    end

    def withdraw(amount)
        #user can withdraw unless the amount is greater than the balance
        @balance -= amount unless amount > @balance
        #pushes a withdraw string pre formatted into the transactions array
        @transactions << "#{@date} || || #{"%.02f" % amount} || #{"%.02f" % @balance}"
    end

    def outputstatement
        #prints out the formatted statement 
        @statement.printstatement(@transactions)
    end
end


       


        

