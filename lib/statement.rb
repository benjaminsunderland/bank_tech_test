require_relative 'bankaccount.rb'

class Statement
  attr_accessor :account_history

  def initialize
    @account_history = []
  end

  def store_history(balance, amount, type)
    @account_history << { calender_time: Time.new.strftime("%d/%m/%Y"), type: type, amount: amount.to_f, balance: @balance.to_f }
  end

  def header
    'date || credit || debit || balance'
  end

  def show_deposit
    puts "#{value[:calender_time]} ||  #{value[:amount]} || || #{value[:balance]}"
  end

  def show_withdrawal
    puts "#{value[:calender_time]} || ||  #{value[:amount]} || #{value[:balance]}"
  end

  def print_format
    puts header
    @account_history.reverse.each do |value|
      value[:type] == :deposit ? show_deposit : show_withdrawal
    end
  end


end
