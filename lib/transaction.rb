class Transaction

  attr_accessor :balance, :statement

  def initialize
   @balance = 0
  end

  def deposit(amount)
   raise "You have to enter an amount greater than 0" if amount <= 0
   @balance += amount
  end

  def withdrawl(amount)
   raise 'Insufficient Funds' if @balance < 0
   @balance -= amount
  end
end
