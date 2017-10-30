class BankAccount

  attr_accessor :balance
  attr_reader :deposit_history

  def initialize(balance = 0)
    @balance = balance
    @deposit_history = []
  end

  def deposit(amount)
    new_balance = @balance += amount
    @deposit_history << new_balance
  end

end
