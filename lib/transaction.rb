class Transaction

  attr_accessor :balance, :statement

  def initialize(balance = 0)
  @balance = balance
  end

  def deposit(amount)
   raise "You have to enter an amount greater than 0" if amount <= 0
   @balance += amount
   @statement.store_history(balance, amount, :deposit)
  end

  def withdrawl(amount)
   raise 'Insufficient Funds' if @balance < 0
   @balance -= amount
   @statement.store_history(balance, amount, :withdrawl)
  end
end
