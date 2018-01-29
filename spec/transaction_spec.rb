require 'transaction'

describe Transaction do

  subject(:transaction) { described_class.new }

  describe 'iniitialisation' do
    it 'is an instance of transaction' do
      expect(transaction).to be_an_instance_of(Transaction)
    end
  end
end
