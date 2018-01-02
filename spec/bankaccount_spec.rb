require 'bankaccount'
require 'timecop'

describe BankAccount do
  subject(:bankaccount) { described_class.new }

  describe 'When crediting to your account' do
    it 'it can store a history of deposits' do
      new_time = Timecop.freeze(Time.local(2012, 1, 10)).strftime('%F')
      bankaccount.deposit(1000)
      expect(bankaccount.statement.account_history.first).to eq({:calender_time=>"10/01/2012", :type=>:deposit, :amount=>1000.0, :balance=>0.0})
    end
  end

  describe 'When withdrawing from your account' do
    it 'can store a history of withdrawls' do
      new_time = Timecop.freeze(Time.local(2012, 1, 13)).strftime('%F')
      bankaccount.deposit(1000)
      bankaccount.withdrawl(500)
      expect(bankaccount.statement.account_history[1]).to eq({:calender_time=>"13/01/2012", :type=>:withdrawl, :amount=>500.0, :balance=>0.0})
    end

    it 'will throw an error if there is Insufficient funds' do
      expect { bankaccount.withdrawl(100).to raise_error('Insufficient Funds') }
    end
  end
end
