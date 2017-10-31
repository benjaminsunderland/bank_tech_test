require_relative 'bankaccount.rb'

class Statement
  attr_accessor :bankaccount

  def initialize(bankaccount = BankAccount.new)
    @bankaccount = bankaccount
  end

  def header
    'date || credit || debit || balance'
  end

  def print_statement
    puts header
    @bankaccount.account_history.each do |value|
      puts "#{value[:calender_time]} ||  #{value[:amount]} || || #{value[:balance]}"
    end
  end
end
