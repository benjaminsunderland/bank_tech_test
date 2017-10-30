require 'bankaccount'

describe BankAccount do

  subject(:bankaccount) { described_class.new}

  describe "#initialize" do
    it "instantiates a new bank account with an empty balance" do
      expect(bankaccount.balance).to eq(0)
    end
  end

  describe "when crediting to your account" do
    it "it can store a history of deposits" do
      bankaccount.deposit(100)
      expect(bankaccount.deposit_history.first).to eq(100)
    end
  end
end
