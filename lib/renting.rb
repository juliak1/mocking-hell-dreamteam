class Renting
  attr_accessor :id, :date, :days, :car, :account

  def initialize(id, date, days, car, account)
    @id = id
    @date = date
    @days = days
    @car = car
    @account = account
  end

  def to_s
    "#{date} #{days} #{car} #{account}"
  end
end
