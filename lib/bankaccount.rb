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
        @transactions << "#{@date} || #{"%.02f" % amount} || || #{"%.02f" % @balance}"
    end

    def withdraw(amount)
        @balance -= amount unless @balance <= amount
        @transactions << "#{@date} || || #{"%.02f" % amount} || #{"%.02f" % @balance}"
    end

    def outputstatement
        @statement.printstatement(@transactions)
    end
end


       


        

