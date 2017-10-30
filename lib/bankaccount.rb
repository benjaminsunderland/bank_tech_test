class BankAccount

  attr_accessor :balance, :account_history

  def initialize(balance = 0)
    @balance = balance
    @account_history = []
  end

  def deposit(amount)
    @balance += amount
    store_history(balance, amount)
  end

  def withdrawl(amount)
    fail "Insufficient Funds" if @balance < 0
    @balance -= amount
    store_history(balance, amount)
  end

  def store_history(balance, amount)
    time = Time.new
    calender_time = time.strftime('%F')
    @account_history << {balance: @balance, amount: amount, calender_time: calender_time}

  end

end
