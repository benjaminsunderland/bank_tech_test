require 'statement'

describe Statement do
  subject(:statement) { described_class.new }
  let(:bankaccount) { double :bankaccount }

  describe '#initialize' do
    it 'initializes and has access to the bank account class' do
      expect(statement.account_history).to eq([])
    end
  end

  describe 'when accessing the statement' do
    it 'is possible to view the headers' do
      expect(statement.header).to eq('date || credit || debit || balance')
    end
  end
end
