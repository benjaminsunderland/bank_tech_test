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
    @balance -= amount
    store_history(balance, amount)
  end

  def store_history(balance, amount)
    time = Time.new
    @account_history << {balance: @balance, amount: amount, time: time}

  end

end
