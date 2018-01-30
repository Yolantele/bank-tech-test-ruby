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
    if allow_transaction?
      @transaction -= sum
    end
  end

  def deposit(sum)
    if allow_transaction?
      @transaction += sum
    end
  end

  private

  def allow_transaction?
    if @date == 0
      time_stamp
      return true
    end
  end
  
end
