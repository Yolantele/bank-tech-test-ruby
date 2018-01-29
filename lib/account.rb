require 'transaction'

class Account
  attr_reader :balance, :log

  def initialize(balance = 0)
    @balance = balance
    @log = []
  end

  def log(transaction)
    @balance += transaction.transaction
    @log << transaction
  end
end
