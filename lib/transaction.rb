class Transaction

  def initialize
  end

  def deposit(amount)
   @balance += amount
   store_history(balance, amount)
  end

  def withdrawl(amount)
   raise 'Insufficient Funds' if @balance < 0
   @balance -= amount
   store_history(balance, amount)
  end

  def store_history(balance, amount)
   time = Time.new
   calender_time = time.strftime('%F')
   statement.account_history << { calender_time: calender_time, amount: amount.to_f, balance: @balance.to_f }
  end

end
