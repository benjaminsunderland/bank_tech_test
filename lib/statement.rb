class Statement

  attr_accessor :bankaccount

  def initialize(bankaccount = BankAccount.new)
    @bankaccount = bankaccount
  end

  def header
    "date || credit || debit || balance"
  end



end
