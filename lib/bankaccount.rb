require_relative 'statement'
require_relative 'transaction'

class BankAccount
  attr_accessor :balance, :statement

  def initialize(transaction = Transaction.new, statement = Statement.new)
    @transaction = transaction
    @statement = statement
  end

  def deposit(amount)
    @transaction.deposit(amount)
    @statement.store_history(balance, amount, :deposit)
  end

  def withdrawl(amount)
    @transaction.withdrawl(amount)
    @statement.store_history(balance, amount, :deposit)
  end

  def print_statement
    puts @statement.header
    puts @statement.print_statement
  end

end
