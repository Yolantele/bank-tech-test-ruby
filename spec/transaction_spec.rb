require 'transaction'

describe Transaction do

  subject(:transaction) { described_class.new('2018-01-29')}

  describe 'initialisation' do
    it 'is an instance of transaction' do
      expect(transaction).to be_an_instance_of(Transaction)
    end
    it 'timestamps with current date' do
      t = Transaction.new('2018-01-29')
      expect(t.date).to eq('2018-01-29')
    end
  end
  # describe 'withdraw' do
  #   it 'deducts money' do
  #     expect(transaction.)
  # end
end
