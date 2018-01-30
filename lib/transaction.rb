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
    @transaction -= sum if credible?(sum)
  end

  def deposit(sum)
    @transaction += sum if credible?(sum)
  end

  private

  def allow_transaction?
    if @date == 0
      time_stamp
      return true
    end
  end

  def credible?(sum)
    raise if sum == 0 || !allow_transaction?
  end
end
