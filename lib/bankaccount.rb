require 'Date'
# require_relative 'statement.rb'
class Bankaccount

    attr_reader :balance, :transactions

    def initialize
        @balance = 0
        @date = DateTime.now.strftime "%d/%m/%Y"
        @transactions = []
    end

    # private
    def deposit(amount)
        @balance += amount
        @transactions << "#{@date} || #{"%.02f" % amount} || || #{"%.02f" % @balance}"
        p @transactions
    end

    def withdraw(amount)
        @balance -= amount
        @transactions << "#{@date} || || #{"%.02f" % amount} || #{"%.02f" % @balance}"
        p @transactions
       
    end

    def statement
        array = @transactions.reverse()
        puts "date || credit || debit || balance"
        puts array.join("\n")
    end
end


        

