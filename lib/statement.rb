require_relative 'bankaccount.rb'

class Statement
  attr_accessor :account_history, :store_history

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
    puts "#{@account_history[0][:calender_time]} ||  #{@account_history[0][:amount]} || || #{@account_history[0][:balance]}"
  end

  def show_withdrawal
    puts "#{@account_history[0][:calender_time]} || ||  #{@account_history[0][:amount]} || #{@account_history[0][:balance]}"
  end

  def print_format
    puts header
    @account_history.reverse.each do |value|
      value[:type] == :deposit ? show_deposit : show_withdrawal
    end
  end


end
