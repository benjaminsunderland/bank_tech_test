require 'bankaccount'
require 'timecop'

describe BankAccount do

  subject(:bankaccount) { described_class.new}
  let(:time) { double}

  describe "#initialize" do
    it "instantiates a new bank account with an empty balance" do
      expect(bankaccount.balance).to eq(0)
    end
  end

  describe "When crediting to your account" do
    it "it can store a history of deposits" do
      new_time = Time.new
      Timecop.freeze(new_time)
      bankaccount.deposit(1000)
      expect(bankaccount.account_history.first).to eq({:balance=>1000, :amount=>1000, :time=>new_time})
    end

    it "increases the balance the amount given" do
      bankaccount.deposit(1000)
      expect(bankaccount.balance).to eq(1000)
    end
  end

  describe "When withdrawing from your account" do
    it "can store a history of withdrawls" do
      new_time = Time.new
      Timecop.freeze(new_time)
      bankaccount.deposit(1000)
      bankaccount.withdrawl(500)
      expect(bankaccount.account_history[1]).to eq({:balance=>500, :amount=>500, :time=>new_time})
    end

    it "decreases the balance the amount given" do
      bankaccount.deposit(1000)
      bankaccount.withdrawl(500)
      expect(bankaccount.balance).to eq(500)
    end
  end
end