require 'transaction'

describe Transaction do

  let(:t) { described_class.new }

  describe 'initialisation' do
    it 'is an instance of transaction' do
      expect(t).to be_an_instance_of(Transaction)
    end
    it 'timestamps with current date' do
      expect(t.date).to eq(0)
    end
  end

  describe 'time_stamp' do
    it 'sets date to given date' do
      t.time_stamp('01-01-2018')
      expect(t.date).to eq('01-01-2018')
    end
  end

  describe 'transactions' do
    it 'can deduct money' do
      t.withdraw(90)
      expect(t.transaction).to eq(-90)
    end
    it 'can deposit money' do
      t.deposit(90)
      expect(t.transaction).to eq(90)
    end
  end

  describe 'transaction information' do
    it 'captures transaction and time of transaction information' do
      t.deposit(90)
      expect(t.date).to_not eq(0)
      expect(t.transaction).to_not eq(0)
    end
  end
end
