require_relative 'statement'

class BankAccount
  attr_accessor :balance, :statement

  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def deposit(amount)
   @balance += amount
   store_history(balance, amount, :deposit)
  end

  def withdrawl(amount)
   raise 'Insufficient Funds' if @balance < 0
   @balance -= amount
   store_history(balance, amount, :withdrawl)
  end

  def store_history(balance, amount, type)
   time = Time.new
   calender_time = time.strftime('%F')
   statement.account_history << { calender_time: calender_time, type: type, amount: amount.to_f, balance: @balance.to_f }
  end


end
