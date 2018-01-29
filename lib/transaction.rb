class Transaction
  attr_reader :date, :transaction

  def initialize(date = Time.new)
    @date = date
    @transaction = 0
  end

  def withdraw(sum)
    @transaction -= sum
  end
end
