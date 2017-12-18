# Bank application

The Aim:

- Write an bank application that you can use in the terminal.
- The application should be able to: *Deposit*, *Withdraw*, *Print Statement*
- The statement should look like this:

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## Installation

* Make sure you have Ruby installed.
* Clone the repository below to your local computer

```sh
git clone https://github.com/benjaminsunderland/bank_tech_test.git
```

## Tests

This application has been written using Test Driven Development with RSpec.

To Test - in the project directory type:

```sh
rspec
```

To Run - In the project directory type these commands:

```sh
- irb to launch the interactive ruby shell
- require the file called 'bankaccount' by typing 'require (the directory)'
- Type: bank = BankAccount.new
```

To Withdraw:

```sh
bank.withdrawl(amount)
```

To Deposit:

```sh
bank.deposit(amount)
```

## Technologies

* Ruby
* TDD with RSpec

## My Approach

- What about OOD? What would be the necessary objects?
- Which class would hold my dependency injections?
- It was important to me to first program an application that could work and then start extracting classes out of it.

Were being timed to complete this tech test. It was really important to me to plan effectively in order to keep fluency. Firstly, from looking at the printed format of the statement, I had an understanding of what two objects would be. An 'account' class and a 'statement' class.

At the beginning, my impression was the 'account' class would hold methods which would deduct and deposit funds from the balance. Subsequently, these transactions would be stored in my 'account history' in my statement class.

My statement class would manage my transactions and store them in an instance variable called 'account history'. This class would also have control over printing out the statement in the format shown above.

However, later on I realised I was delegating too much functionality to the 'account class'. This class was holding the balance which didn't seem right because it should be an interface/controller. Due to this, I created a 'transaction' class. This would take control of the balance of the account and control transactions.


## What am I pleased with

- This project gave me a fresh understanding of OOD.
- Separation Of Concerns
- Encapsulation
- Very pleased that I managed to program a finished application.

## What would I like to include in the future or change

- I didn't have a lot of time for this project. In the future, I would love to make it more user-friendly. I also would include 'code coverage' on the project.
