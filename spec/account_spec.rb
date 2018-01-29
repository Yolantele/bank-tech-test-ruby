require 'account'
require 'transaction'

describe Account do

  let(:account) { described_class.new }
  let(:transaction) { Transaction.new }

  describe 'initialisation' do
    it 'is an instance of Account' do
      expect(account).to be_an_instance_of(Account)
    end
    it 'can be set with pre-determined balance' do
      account2 = Account.new(100)
      expect(account2.balance).to eq(100)
    end
  end

  describe 'log' do
    it 'updates balance' do
      transaction.withdraw(10)
      account.log(transaction)
      expect(account.balance).to eq(-10)
    end
  end

end
