class Transaction
  attr_reader :date

  def initialize(date = Time.new)
    @date = date
  end

end
