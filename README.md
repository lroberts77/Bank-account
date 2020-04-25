# Bank Tech Test
### Technologies: Ruby, Rspec

## Index
* [Installation](#Install)
* [Rspec Tests](#Rspec)
* [Project Direction](#Project)
* [Usage](#Usage)

Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time.  This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## <a name="Project">Project Direction</a>
I started this tech test by writing tests to see if the code executed everything on the requirements specification. All the tests passed therefore I knew that the code was working. Because of all the if and else statements I couldn't follow the structure, so I began rewriting the code. I separated the items into if statements and put the value adjustments into ternary operators. By doing this I distilled the code and made it easier to read by item and behaviour.


## <a name="Install">Installation</a>
* To clone the repo
```shell
$ git clone https://github.com/lroberts77/Bank-account
$ cd bank-account
$ bundle
```


## <a name="Rspec">Rspec Tests</a>
```shell
$ cd bank-account
$ rspec
```


## <a name="Usage">Usage</a>
in the terminal
```ruby
$ ruby irb.rb
$ account = Bankaccount.new
$ account.deposit(100.99)
$ account.deposit(100)
$ account.withdraw(50.20)
$ account.withdraw(30.20)
$ account.outputstatement
```
