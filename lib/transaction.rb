# classes transaction

class Transaction
  attr_reader :date, :transaction

  def initialize
    @date = 0
    @transaction = 0
  end

  def time_stamp(date = Time.new)
    @date = date
  end

  def withdraw(sum)
    time_stamp
    @transaction -= sum
  end

  def deposit(sum)
    time_stamp
    @transaction += sum
  end
end
