require_relative 'bankaccount.rb'

class Statement
  attr_accessor :account_history

  def initialize
    @account_history = []
  end

  def header
    'date || credit || debit || balance'
  end

  def print_statement
    puts header
    @account_history.reverse.each do |value|
      if value[:type] == :deposit
      puts "#{value[:calender_time]} ||  #{value[:amount]} || || #{value[:balance]}"
      else
      puts "#{value[:calender_time]} || ||  #{value[:amount]} || #{value[:balance]}"
      end
    end
  end
end
