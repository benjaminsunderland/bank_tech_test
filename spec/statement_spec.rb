require 'statement'

describe Statement do
  subject(:statement) { described_class.new }
  let(:bankaccount) { double :bankaccount }

  describe '#initialize' do
    it 'initializes and has access to the bank account class' do
      allow(statement.bankaccount).to receive(:account_history).and_return([])
    end
  end

  describe 'when accessing the statement' do
    it 'is possible to view the headers' do
      expect(statement.header).to eq('date || credit || debit || balance')
    end

    it 'is able to print the statement' do
      statement.bankaccount.deposit(1000)
      statement.bankaccount.deposit(2000)
      statement.bankaccount.withdrawl(500)
      expect(statement.print_statement).to eq("date || credit || debit || balance
                                              14/01/2012 || || 500.00 || 2500.00
                                              13/01/2012 || 2000.00 || || 3000.00
                                              10/01/2012 || 1000.00 || || 1000.00")
    end
  end
end
