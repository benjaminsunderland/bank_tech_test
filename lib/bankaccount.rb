require_relative 'statement'
require_relative 'transaction'

class BankAccount
  attr_accessor :transaction, :statement, :test

  def initialize(transaction = Transaction.new, statement = Statement.new)
    @transaction = transaction
    @statement = statement
  end

  def test
    @statement
  end

  def deposit(amount)
    @statement.store_history(@transaction.balance, amount, :deposit)
  end

  def withdrawl(amount)
    @statement.store_history(@transaction.balance, amount, :withdrawl)
  end

  def print_statement
    puts @statement.header
    puts @statement.print_statement
  end

end
